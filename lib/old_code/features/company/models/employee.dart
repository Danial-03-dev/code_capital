// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Employee {
  final int programmingSkill; // 0 - 5 stars

  const Employee({required this.programmingSkill});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'programmingSkill': programmingSkill};
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(programmingSkill: map['programmingSkill'] as int);
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) =>
      Employee.fromMap(json.decode(source) as Map<String, dynamic>);
}
