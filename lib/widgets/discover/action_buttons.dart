import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onLike;
  final VoidCallback onDislike;
  final VoidCallback onSuperLike;

  const ActionButtons({
    Key? key,
    required this.onLike,
    required this.onDislike,
    required this.onSuperLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: onDislike,
          backgroundColor: Colors.red,
          child: const Icon(Icons.close),
        ),
        FloatingActionButton(
          onPressed: onSuperLike,
          backgroundColor: Colors.blue,
          child: const Icon(Icons.star),
        ),
        FloatingActionButton(
          onPressed: onLike,
          backgroundColor: Colors.green,
          child: const Icon(Icons.favorite),
        ),
      ],
    );
  }
}