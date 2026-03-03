import 'package:code_capital/core/constants/employ_roles.dart';
import 'package:uuid/uuid.dart';

abstract class Task {
  static final _uuid = Uuid();

  final String id;
  final int reward;
  final List<EmployeeRoles> phases;

  int daysToExpire;
  int currentPhaseIndex;
  int currentPhaseIteration;
  double currentPhaseProgress;
  double currentPhaseSpeedFactor;
  double nextPhaseSpeedFactor;

  Task({
    required this.reward,
    required this.phases,
    required this.daysToExpire,
    this.currentPhaseIndex = 0,
    this.currentPhaseIteration = 1,
    this.currentPhaseProgress = 0,
    this.currentPhaseSpeedFactor = 1,
    this.nextPhaseSpeedFactor = 1,
  }) : id = _uuid.v4();

  EmployeeRoles get currentPhase => phases[currentPhaseIndex];

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Task && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
