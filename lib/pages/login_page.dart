import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
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
            const CustomButton(),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  ' Register',
                  style: TextStyle(
                    color: Color(0xff27EDE6),
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
