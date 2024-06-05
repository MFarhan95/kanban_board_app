import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:size_config/size_config.dart';

import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthBox.openBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
      referenceHeight: 800,
      referenceWidth: 400,
      builder: (BuildContext context, Orientation orientation) {
        return MultiProvider(
          providers: multiProviders,
          child: Consumer<SettingsProvider>(
            builder: (BuildContext context, value, Widget? child) {
              return MaterialApp(
                title: 'To Do App',
                theme: value.themeData,
                locale: Locale(value.currentLanguage),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [Locale('en'), Locale('tr')],
                debugShowCheckedModeBanner: false,
                onGenerateRoute: AppRoutes.generateRoute,
                initialRoute: AppRoutes.splash,
              );
            },
          ),
        );
      },
    );
  }
}
