import 'package:flutter/cupertino.dart';
import 'package:kanban_board_app/core/core.dart';

class SplashProvider extends ChangeNotifier {
  void checkLoginStatus(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async {
      bool isOnboardingComplete = await AuthBox.isOnboardingComplete();

      if (isOnboardingComplete) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
      }
    });
  }
}
