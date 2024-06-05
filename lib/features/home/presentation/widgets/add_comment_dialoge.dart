import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

class AddCommentDialog {
  static void show(
    BuildContext context,
    TaskModel task,
  ) {
    String newComment = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.addComment),
          content: SingleChildScrollView(
            child: TextField(
              onChanged: (value) => newComment = value,
              decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.comment),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(AppLocalizations.of(context)!.cancel),
            ),
            Consumer<TaskProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(AppLocalizations.of(context)!.add),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
