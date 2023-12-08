import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Column(
        children: [
          Image.asset('assets/images/scholar.png'),
          const Text(
            'Scholar Chat',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
