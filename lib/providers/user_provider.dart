import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/database_service.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final DatabaseService _databaseService;

  UserProvider(this._databaseService);

  User? get user => _user;

  Future<void> fetchUser(String userId) async {
    try {
      _user = await _databaseService.getUser(userId);
      notifyListeners();
    } catch (error) {
      // Handle error
      print('Error fetching user: $error');
    }
  }

  Future<void> updateUser(User updatedUser) async {
    try {
      await _databaseService.updateUser(updatedUser);
      _user = updatedUser;
      notifyListeners();
    } catch (error) {
      // Handle error
      print('Error updating user: $error');
    }
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }
}