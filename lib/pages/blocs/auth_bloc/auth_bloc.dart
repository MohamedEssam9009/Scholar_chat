import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
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
        }else if (event is RegisterEvent) {
          emit(RegisterLoading());
          try {
            UserCredential user = await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: event.email, password: event.password);
            emit(RegisterSuccess());
          } on FirebaseAuthException catch (ex) {
            if (ex.code == 'weak-password') {
              emit(RegisterFailure(errorMessage: 'weak password'));
            } else if (ex.code == 'email-already-in-use') {
              emit(RegisterFailure(errorMessage: 'email already exists'));
            }
          } catch (e) {
            emit(RegisterFailure(errorMessage: 'there was an error please try again'));
          }
        }
      },
    );
  }
}
