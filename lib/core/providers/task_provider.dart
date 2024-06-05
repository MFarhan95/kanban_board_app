import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban_board_app/core/core.dart';
import 'package:provider/provider.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> taskModel = [];

  Timer? _timer;
  List<TaskModel> _completedTasks = [];

  List<TaskModel> get completedTasks => _completedTasks;

  void reloadTasksOnLanguageChange(BuildContext context) async {
    Provider.of<SettingsProvider>(context, listen: false).currentLanguage;
  }

  TaskProvider() {
    fetchTasks();
  }

  void addTask(TaskModel task) async {
    taskModel.add(task);
    await AuthBox.saveTasks(taskModel);
    notifyListeners();
  }

  void fetchTasks() async {
    try {
      taskModel = await AuthBox.getAllTasks();
      log('task model $taskModel');
      notifyListeners();
    } catch (e) {
      // Handle exceptions appropriately
      print('Failed to fetch tasks: $e');
    }
  }

  void moveTask(TaskModel task, String newColumn) async {
    final index = taskModel.indexOf(task);
    if (index != -1) {
      task.column = newColumn;
      notifyListeners();
    }
  }

  void editTask(TaskModel task, String newTitle, String newDescription) async {
    final index = taskModel.indexOf(task);
    if (index != -1) {
      task.title = newTitle;
      task.description = newDescription;
      notifyListeners();
    }
  }

  void startTimer(TaskModel task, BuildContext context) async {
    if (!task.isTimerRunning) {
      task.isTimerRunning = true;
      task.column = AppLocalizations.of(context)!.inProgress;
      task.startTime = DateTime.now();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        task.elapsedTime = task.elapsedTime + const Duration(seconds: 1);
        notifyListeners();
      });
    }
  }

  void stopTimer(TaskModel task, BuildContext context) async {
    if (task.isTimerRunning) {
      task.isTimerRunning = false;
      task.column = AppLocalizations.of(context)!.done;
      task.elapsedTime += DateTime.now().difference(task.startTime!);
      _timer?.cancel();
      notifyListeners();
    }
  }

  void resetTimer(TaskModel task) async {
    task.isTimerRunning = false;
    task.elapsedTime = Duration.zero;
    task.startTime = null;
    _timer?.cancel();
    notifyListeners();
  }

  void completeTask(TaskModel task, BuildContext context) async {
    stopTimer(task, context);
    task.completedDate = DateTime.now();
    task.column = AppLocalizations.of(context)!.done;

    _completedTasks.add(task);
    notifyListeners();
  }
}
