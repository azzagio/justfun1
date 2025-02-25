import 'package:flutter/material.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/auth/welcome_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/home/discover_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/profile/edit_profile_screen.dart';
import '../screens/profile/preferences_screen.dart';
import '../screens/matches/matches_screen.dart';
import '../screens/matches/match_notification.dart';
import '../screens/chat/chat_list_screen.dart';
import '../screens/chat/chat_screen.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String discover = '/discover';
  static const String profile = '/profile';
  static const String editProfile = '/edit_profile';
  static const String preferences = '/preferences';
  static const String matches = '/matches';
  static const String matchNotification = '/match_notification';
  static const String chatList = '/chat_list';
  static const String chat = '/chat';

  static Map<String, WidgetBuilder> routes = {
    welcome: (context) => const WelcomeScreen(),
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
    home: (context) => const HomeScreen(),
    discover: (context) => const DiscoverScreen(),
    profile: (context) => const ProfileScreen(),
    editProfile: (context) => const EditProfileScreen(),
    preferences: (context) => const PreferencesScreen(),
    matches: (context) => const MatchesScreen(),
    matchNotification: (context) => const MatchNotification(),
    chatList: (context) => const ChatListScreen(),
    chat: (context) => const ChatScreen(),
      
  };
}