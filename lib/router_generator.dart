import 'package:flutter/material.dart';
import 'package:antimedia/main.dart';
import 'pages/home.dart';
import 'pages/calendar.dart';
import 'pages/profile.dart';
import 'pages/camera.dart';
import 'pages/settings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case 'calendar':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return _errorRoute();
    }
  }

  static String generateRouteName(int index) {
    switch (index) {
      case 0:
        return '/';
      case 1:
        return 'calendar';
      case 2:
        return 'profile';
      default:
        return '/';
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}