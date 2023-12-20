import 'package:flutter/material.dart';

import '../constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 150.0,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
      ),
      child: const Text(
        'I am a new user',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
