import 'dart:math';

import 'package:code_capital/core/constants/mocks/mock_first_name.dart';
import 'package:code_capital/core/constants/mocks/mock_last_name.dart';

final _random = Random();

String generateRandomName() {
  final firstName = mockFirstNames[_random.nextInt(mockFirstNames.length)];
  final lastName = mockLastNames[_random.nextInt(mockLastNames.length)];

  return '$firstName $lastName';
}
