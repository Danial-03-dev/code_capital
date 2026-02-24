import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employee_role.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employee_statement.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employee_stats.dart';
import 'package:code_capital/core/utils/generators/generate_random_name.dart';

EmployeeStorageModel generateRandomEmployee({int maxSkill = 10}) {
  final name = generateRandomName();
  final statement = generateRandomEmployeeStatement();
  final statPool = generateRandomEmployeeStats(maxSkill: maxSkill);
  final pay = statPool.pay;
  final hiringCost = statPool.hiringCost;
  final skill = statPool.skill;
  final role = generateRandomEmployeeRole();

  return EmployeeStorageModel(
    name: name,
    pay: pay,
    hiringCost: hiringCost,
    role: role,
    skill: skill,
    statement: statement,
  );
}
