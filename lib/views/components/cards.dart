import 'package:flutter/material.dart';

class TopicsCards extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const TopicsCards({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double textSize = screenSize.width * 0.04;
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: const Color(0xff618989),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
