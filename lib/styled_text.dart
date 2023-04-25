import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.helloWorldText, {super.key});

  final String helloWorldText;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            helloWorldText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          Text('It\'s time to learn Flutter today!'),
        ],
      ),
    );
  }
}
