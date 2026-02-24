import 'dart:math';

import 'package:code_capital/core/constants/employ_roles.dart';

final _random = Random();

EmployeeRoles generateRandomEmployeeRole() {
  return EmployeeRoles.values[_random.nextInt(EmployeeRoles.values.length)];
}
