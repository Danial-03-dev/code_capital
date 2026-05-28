import 'dart:developer';

import 'package:code_capital/core/classes/sealed_classes/task.dart';
import 'package:code_capital/core/types/types.dart';

class TaskEngine {
  static List<Task> tick({
    required List<Task> tasks,
    required EmployeeRolesTotalSkillType totalEmployeeRolesSkill,
  }) {
    final processedTasks = tasks
        .map((task) => _progressTask(task, totalEmployeeRolesSkill))
        .toList();
    return processedTasks.where(_filterTasks).toList();
  }

  static Task _progressTask(
    Task task,
    EmployeeRolesTotalSkillType totalEmployeeRolesSkill,
  ) {
    if (task.currentPhaseProgress >= 100) return task;

    final taskTotalSkill = totalEmployeeRolesSkill[task.currentPhase];

    if (taskTotalSkill == null) {
      log(
        'Missing total skill for task phase',
        name: 'TaskEngine._progressTask',
        error: {
          'phase': task.currentPhase,
          'availabePhases': totalEmployeeRolesSkill.keys.toList(),
        },
      );
      return task;
    }

    task.currentPhaseProgress += task.currentPhaseSpeedFactor * taskTotalSkill;

    return task;
  }

  static bool _filterTasks(Task task) {
    return task.currentPhaseProgress < 100;
  }
}
