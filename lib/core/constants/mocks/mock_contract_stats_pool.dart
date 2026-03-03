import 'dart:math';

const _baseReward = 100;
const _baseComplexity = 20;
const _baseDaysToExpire = 1;

final mockContractStatsPool = List.generate(10, (index) {
  final power = index + 1;

  return (
    reward: pow(_baseReward, power).toInt(),
    complexity: pow(_baseComplexity, power).toInt(),
    daysToExpire: pow(_baseDaysToExpire, power).toInt(),
    level: index + 1,
  );
});
