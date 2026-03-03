import 'package:code_capital/core/constants/employ_roles.dart';

String employeeRolesToString(List<EmployeeRoles> employeeRoles) {
  return employeeRoles.map((e) => e.toString()).join(', ');
}
