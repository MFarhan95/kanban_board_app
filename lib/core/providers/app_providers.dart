import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<SettingsProvider>(
    create: (_) => SettingsProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<SplashProvider>(
    create: (_) => SplashProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<OnBoardingProvider>(
    create: (_) => OnBoardingProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<TaskProvider>(
    create: (_) => TaskProvider(),
    lazy: true,
  ),
];
