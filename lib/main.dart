import 'package:chat_app/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/register_page.dart';

void main() {
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scholar Chat',
      routes: {
        'LoginPage': (context) => const LoginPage(),
        'RegisterPage': (context) => const RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
