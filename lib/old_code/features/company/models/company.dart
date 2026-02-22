// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/features/company/models/contract.dart';
import 'package:code_capital/features/company/models/employee.dart';

class Company {
  final String id;
  final String name;

  int money;
  int week;
  List<Employee> employees;
  Contract? currentContract;

  Company({
    required this.id,
    required this.name,
    this.money = 0,
    this.week = 1,
    this.employees = const [],
    this.currentContract,
  });

  Company copyWith({
    String? name,
    int? money,
    int? week,
    List<Employee>? employees,
  }) {
    return Company(
      id: id,
      name: name ?? this.name,
      money: money ?? this.money,
      week: week ?? this.week,
      employees: employees ?? this.employees,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'money': money,
      'week': week,
      'employees': employees.map((x) => x.toMap()).toList(),
      'currentContract': currentContract?.toMap(),
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      id: map['id'] as String,
      name: map['name'] as String,
      money: map['money'] as int,
      week: map['week'] as int,
      employees: List<Employee>.from(
        (map['employees'] as List<dynamic>).map<Employee>(
          (x) => Employee.fromMap(x as Map<String, dynamic>),
        ),
      ),
      currentContract: map['currentContract'] != null
          ? Contract.fromMap(map['currentContract'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Company.fromJson(String source) =>
      Company.fromMap(json.decode(source) as Map<String, dynamic>);
}
