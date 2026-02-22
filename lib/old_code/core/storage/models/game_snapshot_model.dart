// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/features/company/models/company.dart';

class GameSnapshotModel {
  final Company company;
  final int currentWeek;

  const GameSnapshotModel({required this.company, required this.currentWeek});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'company': company.toMap(),
      'currentWeek': currentWeek,
    };
  }

  factory GameSnapshotModel.fromMap(Map<String, dynamic> map) {
    return GameSnapshotModel(
      company: Company.fromMap(map['company'] as Map<String, dynamic>),
      currentWeek: map['currentWeek'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory GameSnapshotModel.fromJson(String source) =>
      GameSnapshotModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
