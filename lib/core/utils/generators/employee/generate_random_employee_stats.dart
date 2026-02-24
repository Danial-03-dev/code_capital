import 'package:code_capital/core/constants/mocks/mock_employee_stat_pool.dart';

import 'dart:math';

final _random = Random();

({int hiringCost, int pay, int skill}) generateRandomEmployeeStats({
  int maxSkill = 10,
}) {
  // Only include stat pool smaller or equal to maxSkill
  final includedStatsPool = mockEmployeeStatPool
      .asMap()
      .entries
      .where((element) => element.key < maxSkill)
      .map((element) => element.value)
      .toList();

  return includedStatsPool[_random.nextInt(includedStatsPool.length)];
}
