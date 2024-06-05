import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board_app/core/core.dart';

class OnBoardingProvider extends ChangeNotifier {
  PageController? pageController;
  int pageCount = 3;

  OnBoardingProvider() {
    initialState();
  }

  void initialState() {
    pageController = PageController(initialPage: 0);
  }

  void navToNextPage(BuildContext context) async {
    if (pageController == null) return;
    num currentPage =
        pageController!.hasClients ? pageController!.page ?? 0 : 0;

    if (currentPage == pageCount - 1) {
      await AuthBox.setOnboardingComplete(true);
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    } else {
      pageController?.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  void navToPreviousPage() {
    pageController?.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }

  Future<bool> onPressBack() {
    if (pageController?.page != 0) {
      navToPreviousPage();
      return Future.value(false);
    }
    return Future.value(true);
  }

  Future<void> completeOnBoarding(BuildContext context) async {
    await AuthBox.setOnboardingComplete(true);
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }
}
