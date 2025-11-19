import 'package:flutter/material.dart';

class ChatPanel extends StatelessWidget {
  const ChatPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('User1: Hello', style: TextStyle(color: Colors.white)),
            Text('User2: Nice!', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
