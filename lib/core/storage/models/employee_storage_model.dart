// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/core/constants/employ_roles.dart';

class EmployeeStorageModel {
  final String name;
  final int pay;
  final int hiringCost;
  final EmployeeRoles role;
  final int skill;
  final String statement;

  const EmployeeStorageModel({
    required this.name,
    required this.pay,
    required this.hiringCost,
    required this.role,
    required this.skill,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'pay': pay,
      'hiringCost': hiringCost,
      'role': role.toMap(),
      'skill': skill,
      'statement': statement,
    };
  }

  factory EmployeeStorageModel.fromMap(Map<String, dynamic> map) {
    return EmployeeStorageModel(
      name: map['name'] as String,
      pay: map['pay'] as int,
      hiringCost: map['hiringCost'] as int,
      role: EmployeeRoles.fromMap(map['role'] as Map<String, dynamic>),
      skill: map['skill'] as int,
      statement: map['statement'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeStorageModel.fromJson(String source) =>
      EmployeeStorageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EmployeeStorageModel(name: $name, pay: $pay, hiringCost: $hiringCost, role: $role, skill: $skill, statement: $statement)';
  }
}
