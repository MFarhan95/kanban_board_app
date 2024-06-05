import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

class EditTaskDialog {
  static void show(BuildContext context, TaskModel task) {
    String newTitle = task.title;
    String newDescription = task.description;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.edit_task),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => newTitle = value,
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.title),
                  controller: TextEditingController()..text = task.title,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  onChanged: (value) => newDescription = value,
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.description),
                  controller: TextEditingController()..text = task.description,
                ),
              ],
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
                    value.editTask(task, newTitle, newDescription);
                    Navigator.of(context).pop();
                  },
                  child: Text(AppLocalizations.of(context)!.save),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
