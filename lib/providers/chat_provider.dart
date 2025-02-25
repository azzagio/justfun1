import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatProvider with ChangeNotifier {
  List<Chat> _chats = [];

  List<Chat> get chats => _chats;

  void addChat(Chat chat) {
    _chats.add(chat);
    notifyListeners();
  }

  // You can add more methods here to manage chats (e.g., updateChat, deleteChat)
}