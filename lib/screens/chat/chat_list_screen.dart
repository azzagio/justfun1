import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual number of chats
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              // Replace with actual profile picture
              child: Icon(Icons.person),
            ),
            title: const Text('Chat Name'), // Replace with actual chat name
            subtitle: const Text('Last message'), // Replace with last message
            trailing: const Text('Time'), // Replace with time
            onTap: () {
              // Navigate to chat screen
            },
          );
        },
      ),
    );
  }
}