import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

import 'add_comment_dialoge.dart';
import 'edit_task_dialoe.dart';

class TaskColumn extends StatelessWidget {
  final String status;

  const TaskColumn({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        final tasks = taskProvider.taskModel
            .where((task) => task.column == status)
            .toList();

        return Expanded(
          child: Card(
            color: Theme.of(context).cardColor.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    status,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.separated(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return Card(
                        color: Theme.of(context).canvasColor.withOpacity(0.25),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                task.title,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                task.description,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                  '${AppLocalizations.of(context)!.duration}: ${task.elapsedTime.inSeconds}s'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {
                                      EditTaskDialog.show(context, task);
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.comment),
                                    onPressed: () {
                                      AddCommentDialog.show(context, task);
                                    },
                                  ),
                                ],
                              ),
                              if (task.column !=
                                  AppLocalizations.of(context)!.done)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Provider.of<TaskProvider>(context,
                                                listen: false)
                                            .startTimer(task, context);
                                      },
                                      child: Text(
                                        AppLocalizations.of(context)!.startTask,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    TextButton(
                                      onPressed: () {
                                        Provider.of<TaskProvider>(context,
                                                listen: false)
                                            .stopTimer(task, context);
                                      },
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .completeTask,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
