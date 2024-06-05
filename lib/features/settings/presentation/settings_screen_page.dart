import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      drawer: const CustomDrawer(),
      body: Consumer<SettingsProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Column(
            children: [
              SwitchListTile(
                title: Text(value.themeData == AppTheme.darkTheme
                    ? AppLocalizations.of(context)!.lightTheme
                    : AppLocalizations.of(context)!.darkTheme),
                value: value.themeData == AppTheme.darkTheme,
                onChanged: (bool theme) {
                  value.toggleTheme();
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveThumbColor: Theme.of(context).colorScheme.onSurface,
                inactiveTrackColor: Theme.of(context).colorScheme.surface,
              ),
              SwitchListTile(
                title: Text(value.currentLanguage == 'en'
                    ? AppLocalizations.of(context)!.turkish
                    : AppLocalizations.of(context)!.english),
                value: value.currentLanguage == 'en',
                onChanged: (bool isEnglish) {
                  value.setLanguage(isEnglish ? 'en' : 'tr', context);
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveThumbColor: Theme.of(context).colorScheme.onSurface,
                inactiveTrackColor: Theme.of(context).colorScheme.surface,
              ),
            ],
          );
        },
      ),
    );
  }
}
