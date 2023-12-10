import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  static String id = 'registerPage';
  String? email;
  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(height: 75.0),
              Image.asset(
                'assets/images/scholar.png',
                height: 100.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Scholar Chat',
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 75.0),
              const Row(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                onChanged: (data) {
                  email = data;
                },
                hinText: 'Email',
              ),
              const SizedBox(height: 10.0),
              CustomTextField(
                  onChanged: (data) {
                    password = data;
                  },
                  hinText: 'Password'),
              const SizedBox(height: 20.0),
              CustomButton(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      try {
                        await registerUser();
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          // ignore: use_build_context_synchronously
                          showSnackBar(context, 'weak-password');
                        } else if (e.code == 'email-already-in-use') {
                          // ignore: use_build_context_synchronously
                          showSnackBar(context, 'email already exists');
                        }
                      } catch (e) {
                        // ignore: use_build_context_synchronously
                        showSnackBar(context, 'there was an error');
                      }
                      // ignore: use_build_context_synchronously
                      showSnackBar(context, 'Success');
                    } else {}
                  },
                  text: 'Register'),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account',
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      ' Login',
                      style: TextStyle(
                        color: Color(0xff27EDE6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> registerUser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
