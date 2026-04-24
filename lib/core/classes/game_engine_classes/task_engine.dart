import 'package:code_capital/core/classes/sealed_classes/task.dart';

class TaskEngine {
  static List<Task> tick(List<Task> tasks) {
    final processedTasks = tasks.map(_progressTask).toList();
    return processedTasks.where(_filterTasks).toList();
  }

  static Task _progressTask(Task task) {
    if (task.currentPhaseProgress >= 100) return task;

    task.currentPhaseProgress += task.currentPhaseSpeedFactor;

    return task;
  }

  static bool _filterTasks(Task task) {
    return task.currentPhaseProgress < 100;
  }
}
