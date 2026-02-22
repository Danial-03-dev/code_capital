// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GameSnapshotModel {
  final String companyName;

  const GameSnapshotModel({required this.companyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'companyName': companyName};
  }

  factory GameSnapshotModel.fromMap(Map<String, dynamic> map) {
    return GameSnapshotModel(companyName: map['companyName'] as String);
  }

  String toJson() => json.encode(toMap());

  factory GameSnapshotModel.fromJson(String source) =>
      GameSnapshotModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
