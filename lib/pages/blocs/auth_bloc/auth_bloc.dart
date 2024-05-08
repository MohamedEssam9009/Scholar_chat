import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholar_chat/pages/blocs/auth_bloc/auth_event.dart';
import 'package:scholar_chat/pages/blocs/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(LoginLoading());
        try {
          UserCredential user = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: event.email, password: event.password);
          emit(LoginSuccess());
        } on FirebaseAuthException catch (ex) {
          if (ex.code == 'user-not-found') {
            emit(LoginFailure(errorMessage: 'user not found'));
          } else if (ex.code == 'wrong-password') {
            emit(LoginFailure(errorMessage: 'user not found'));
          }
        } catch (e) {
          emit(LoginFailure(errorMessage: 'there was an error'));
        }
      }
    });
  }
}
