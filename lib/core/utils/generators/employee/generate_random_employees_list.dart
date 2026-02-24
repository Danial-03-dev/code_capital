import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employee.dart';

List<EmployeeStorageModel> generateRandomEmployeesList({
  required int amount,
  int maxSkill = 10,
}) {
  final List<EmployeeStorageModel> employList = [];

  for (int i = 0; i < amount; i++) {
    employList.add(generateRandomEmployee(maxSkill: maxSkill));
  }

  return employList;
}
