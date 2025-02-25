import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;

  const InfoSection({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          content,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}