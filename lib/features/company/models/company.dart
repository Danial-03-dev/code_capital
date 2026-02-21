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
}
