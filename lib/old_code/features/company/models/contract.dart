// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Contract {
  final int requiredSkill;
  final int complexity;
  final int reward;

  int progress;
  bool isCompleted;

  Contract({
    required this.requiredSkill,
    required this.complexity,
    required this.reward,

    this.progress = 0,
    this.isCompleted = false,
  });

  void reset() {
    progress = 0;
    isCompleted = false;
  }

  void complete() {
    isCompleted = true;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredSkill': requiredSkill,
      'complexity': complexity,
      'reward': reward,
      'progress': progress,
      'isCompleted': isCompleted,
    };
  }

  factory Contract.fromMap(Map<String, dynamic> map) {
    return Contract(
      requiredSkill: map['requiredSkill'] as int,
      complexity: map['complexity'] as int,
      reward: map['reward'] as int,
      progress: map['progress'] as int,
      isCompleted: map['isCompleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contract.fromJson(String source) =>
      Contract.fromMap(json.decode(source) as Map<String, dynamic>);
}
