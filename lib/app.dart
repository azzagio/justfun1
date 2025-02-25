import 'package:flutter/material.dart';
import 'config/routes.dart' as app_routes;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: app_routes.appRoutes,
    );
  }
}