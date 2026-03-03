import 'dart:math';

import 'package:code_capital/core/constants/mocks/mock_contract_stats_pool.dart';

final _random = Random();

({int reward, int complexity, int daysToExpire, int level})
generateRandomContractStats({int maxLevel = 10}) {
  // Only include stat pool smaller or equal to level
  final includedStatsPool = mockContractStatsPool
      .asMap()
      .entries
      .where((element) => element.key < maxLevel)
      .map((element) => element.value)
      .toList();

  return includedStatsPool[_random.nextInt(includedStatsPool.length)];
}
