import 'dart:math';

const _basePay = 100;
const _baseHiringCost = 20;

final mockEmployeeStatsPool = List.generate(10, (index) {
  final level = index + 1;

  return (
    pay: pow(_basePay, level).toInt(),
    hiringCost: pow(_baseHiringCost, level).toInt(),
    skill: level,
  );
});
