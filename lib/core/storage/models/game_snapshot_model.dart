// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:code_capital/core/storage/models/company_storage_model.dart';

class GameSnapshotModel {
  final CompanyStorageModel company;

  const GameSnapshotModel({required this.company});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'company': company.toMap()};
  }

  factory GameSnapshotModel.fromMap(Map<String, dynamic> map) {
    return GameSnapshotModel(
      company: CompanyStorageModel.fromMap(
        map['company'] as Map<String, dynamic>,
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameSnapshotModel.fromJson(String source) =>
      GameSnapshotModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
