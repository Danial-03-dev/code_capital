import 'package:code_capital/core/storage/models/game_snapshot_model.dart';
import 'package:hive_ce/hive_ce.dart';

class GameSnapshotStorageService {
  static const _snapshotKey = 'game_snapshot';
  final Box _box;

  const GameSnapshotStorageService({required Box box}) : _box = box;

  Future<void> save({required GameSnapshotModel snapshot}) async {
    await _box.put(_snapshotKey, snapshot.toJson());
  }

  GameSnapshotModel? load() {
    final snapshotJson = _box.get(_snapshotKey);

    if (snapshotJson == null) return null;

    return GameSnapshotModel.fromJson(snapshotJson);
  }

  Future<void> clear() async {
    await _box.delete(_snapshotKey);
  }
}
