// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/core/storage/models/employee_storage_model.dart';

const _companyStartingMoney = 0;

class CompanyStorageModel {
  final List<EmployeeStorageModel> employees;

  String companyName;
  int money;
  int rating;
  int maxEmployees;

  CompanyStorageModel({
    required this.companyName,
    this.money = _companyStartingMoney,
    this.employees = const [],
    this.rating = 1,
    this.maxEmployees = 2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employees': employees.map((x) => x.toMap()).toList(),
      'companyName': companyName,
      'money': money,
      'rating': rating,
      'maxEmployees': maxEmployees,
    };
  }

  factory CompanyStorageModel.fromMap(Map<String, dynamic> map) {
    return CompanyStorageModel(
      employees: (map['employees'] as List<dynamic>? ?? [])
          .map(
            (e) => EmployeeStorageModel.fromMap(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
      companyName: map['companyName'] as String,
      money: map['money'] as int,
      rating: map['rating'] as int,
      maxEmployees: map['maxEmployees'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyStorageModel.fromJson(String source) =>
      CompanyStorageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CompanyStorageModel(employees: $employees, companyName: $companyName, money: $money, rating: $rating, maxEmployees: $maxEmployees)';
  }
}
