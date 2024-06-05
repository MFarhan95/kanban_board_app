import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:kanban_board_app/features/home/presentation/widgets/task_input_dialoge.dart';
import 'package:provider/provider.dart';

import 'task_column.dart';

class KanbanBoard extends StatelessWidget {
  const KanbanBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.homeTitle)),
      drawer: const CustomDrawer(),
      body: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 2.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TaskColumn(status: AppLocalizations.of(context)!.todo),
                  TaskColumn(status: AppLocalizations.of(context)!.inProgress),
                  TaskColumn(status: AppLocalizations.of(context)!.done),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Consumer<TaskProvider>(
        builder: (BuildContext context, TaskProvider value, Widget? child) {
          return FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const TaskInputDialog(),
              );
            },
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
