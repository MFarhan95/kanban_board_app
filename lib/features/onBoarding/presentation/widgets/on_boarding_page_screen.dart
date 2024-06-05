import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:size_config/size_config.dart';
import 'on_boarding_page_view.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 420.h,
        child: PageView(
          controller: pageController,
          children: [
            OnBoardingPageView(
              image: Strings.onBoardingData[0],
              title: AppLocalizations.of(context)!.welcomeMessage1,
              description: AppLocalizations.of(context)!.descriptionMessage1,
            ),
            OnBoardingPageView(
              image: Strings.onBoardingData[1],
              title: AppLocalizations.of(context)!.welcomeMessage2,
              description: AppLocalizations.of(context)!.descriptionMessage2,
            ),
            OnBoardingPageView(
              image: Strings.onBoardingData[2],
              title: AppLocalizations.of(context)!.welcomeMessage3,
              description: AppLocalizations.of(context)!.descriptionMessage3,
            ),
          ],
        ));
  }
}
