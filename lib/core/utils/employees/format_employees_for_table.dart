import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:intl/intl.dart';

class EmployeeTableData {
  final List<String> indexes;
  final List<String> names;
  final List<String> roles;
  final List<String> skills;
  final List<String> pays;

  const EmployeeTableData({
    required this.indexes,
    required this.names,
    required this.roles,
    required this.skills,
    required this.pays,
  });
}

EmployeeTableData formatEmployeesForTable(
  List<EmployeeStorageModel> employees,
) {
  final List<String> indexes = [];
  final List<String> names = [];
  final List<String> roles = [];
  final List<String> skills = [];
  final List<String> pays = [];

  for (int i = 0; i < employees.length; i++) {
    final employee = employees[i];

    indexes.add((i + 1).toString());
    names.add(employee.name);
    roles.add(toBeginningOfSentenceCase(employee.role.toString()));
    skills.add('${employee.skill.toString()} / 10');
    pays.add('\$${employee.pay}');
  }

  return EmployeeTableData(
    indexes: indexes,
    names: names,
    roles: roles,
    skills: skills,
    pays: pays,
  );
}
