import 'package:flutter/material.dart';
import 'package:kanban_board_app/features/features.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
  static const String home = '/home';
  static const String settingsScreen = '/setting';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreenPage());
      case settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
