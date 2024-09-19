import 'package:flutter/material.dart';

class TopicsHeadings extends StatelessWidget {
  final String unit;
  const TopicsHeadings({required this.unit, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            unit,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          'Sources: Buddha Publication Pvt. Ltd.',
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: 14.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
