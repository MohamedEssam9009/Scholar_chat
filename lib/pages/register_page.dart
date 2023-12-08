import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  'Register',
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
            CustomButton(text: 'Register'),
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
            const Spacer(flex: 3)
          ],
        ),
      ),
    );
  }
}
