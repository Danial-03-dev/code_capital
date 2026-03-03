import 'dart:math';

import 'package:code_capital/core/constants/mocks/mock_company_names.dart';

final _random = Random();

String generateRandomCompanyName() {
  String randomFrom(List<String> list) {
    return list[_random.nextInt(list.length)];
  }

  return "${randomFrom(companyPrefixes)} "
      "${randomFrom(companyCoreWords)}"
      "${randomFrom(companySuffixes)}";
}
