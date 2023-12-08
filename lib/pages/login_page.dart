import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static String id = 'loginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            const Spacer(flex: 2),
            const Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            CustomTextField(hinText: 'Email'),
            const SizedBox(height: 10.0),
            CustomTextField(hinText: 'Password'),
            const SizedBox(height: 20.0),
            CustomButton(text: 'Login'),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: const Text(
                    ' Register',
                    style: TextStyle(
                      color: Color(0xff27EDE6),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 3)
          ],
        ),
      ),
    );
  }
}
