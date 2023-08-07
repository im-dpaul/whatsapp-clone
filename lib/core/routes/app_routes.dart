import 'package:flutter/material.dart';
import 'package:whatsapp_ui/features/chat/view/chat_screen.dart';
import 'package:whatsapp_ui/features/home/view/home_screen.dart';
import 'package:whatsapp_ui/features/splash_screen/views/splash_screen.dart';
class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';
  static const String chatScreen = '/chatScreen';
}
class GenerateRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = settings.name;
    // final arguments = settings.arguments;
    switch (route) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppRoutes.chatScreen:
        return MaterialPageRoute(
          builder: (context) => const ChatScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
