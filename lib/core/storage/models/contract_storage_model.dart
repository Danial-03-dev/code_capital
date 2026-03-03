// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/core/constants/employ_roles.dart';
import 'package:code_capital/core/classes/sealed_classes/task.dart';

class ContractStorageModel extends Task {
  final String providerName;
  final int complexity;
  final int level;

  ContractStorageModel({
    required this.providerName,
    required super.reward,
    required this.complexity,
    required super.phases,
    required this.level,
    required super.daysToExpire,

    super.currentPhaseIndex = 0,
    super.currentPhaseIteration = 1,
    super.currentPhaseProgress = 0,
    super.currentPhaseSpeedFactor = 1,
    super.nextPhaseSpeedFactor = 1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerName': providerName,
      'reward': reward,
      'complexity': complexity,
      'level': level,
      'phases': phases.map((x) => x.toMap()).toList(),
      'daysToExpire': daysToExpire,
      'currentPhaseIndex': currentPhaseIndex,
      'currentPhaseIteration': currentPhaseIteration,
      'currentPhaseProgress': currentPhaseProgress,
      'currentPhaseSpeedFactor': currentPhaseSpeedFactor,
      'nextPhaseSpeedFactor': nextPhaseSpeedFactor,
    };
  }

  factory ContractStorageModel.fromMap(Map<String, dynamic> map) {
    return ContractStorageModel(
      providerName: map['providerName'] as String,
      reward: map['reward'] as int,
      complexity: map['complexity'] as int,
      level: map['level'] as int,
      phases: List<EmployeeRoles>.from(
        (map['phases'] as List<int>).map<EmployeeRoles>(
          (x) => EmployeeRoles.fromMap(x as Map<String, dynamic>),
        ),
      ),
      daysToExpire: map['daysToExpire'] as int,
      currentPhaseIndex: map['currentPhaseIndex'] as int,
      currentPhaseIteration: map['currentPhaseIteration'] as int,
      currentPhaseProgress: map['currentPhaseProgress'] as double,
      currentPhaseSpeedFactor: map['currentPhaseSpeedFactor'] as double,
      nextPhaseSpeedFactor: map['nextPhaseSpeedFactor'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContractStorageModel.fromJson(String source) =>
      ContractStorageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ContractStorageModel(providerName: $providerName, reward: $reward, complexity: $complexity, level: $level, phases: $phases, daysToExpire: $daysToExpire, currentPhaseIndex: $currentPhaseIndex, currentPhaseIteration: $currentPhaseIteration, currentPhaseProgress: $currentPhaseProgress, currentPhaseSpeedFactor: $currentPhaseSpeedFactor, nextPhaseSpeedFactor: $nextPhaseSpeedFactor)';
  }
}
