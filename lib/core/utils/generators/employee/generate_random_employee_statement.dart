import 'dart:math';

import 'package:code_capital/core/constants/mocks/mock_employee_statements.dart';

final _random = Random();

String generateRandomEmployeeStatement() {
  return mockEmployeeStatements[_random.nextInt(mockEmployeeStatements.length)];
}
