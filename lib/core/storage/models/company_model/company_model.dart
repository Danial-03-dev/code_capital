import 'package:hive_ce/hive.dart';

part 'company_model.g.dart';

@HiveType(typeId: 0)
class CompanyModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  int money;

  @HiveField(2)
  int week;

  @HiveField(3)
  String id;

  CompanyModel({
    required this.name,
    required this.money,
    required this.week,
    required this.id,
  });
}
