// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EmployeeStorageModel {
  final String name;
  final int pay;
  final int hiringCost;

  const EmployeeStorageModel({
    required this.name,
    required this.pay,
    required this.hiringCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'pay': pay,
      'hiringCost': hiringCost,
    };
  }

  factory EmployeeStorageModel.fromMap(Map<String, dynamic> map) {
    return EmployeeStorageModel(
      name: map['name'] as String,
      pay: map['pay'] as int,
      hiringCost: map['hiringCost'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeStorageModel.fromJson(String source) =>
      EmployeeStorageModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
