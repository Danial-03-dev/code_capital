import 'package:code_capital/core/storage/models/game_snapshot_model.dart';
import 'package:code_capital/core/storage/storage_services/game_snapshot_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  final GameSnapshotStorageService _storage;
  AppCubit({required GameSnapshotStorageService storage})
    : _storage = storage,
      super(AppLoadingState());

  Future<void> load() async {
    final snapshot = await _storage.load();

    if (snapshot == null) {
      emit(AppNoSaveState());
      return;
    }

    emit(AppExistingSaveState(snapshot: snapshot));
  }

  Future<void> startNewSave(String companyName) async {
    final snapshot = GameSnapshotModel(companyName: companyName);

    await _storage.save(snapshot: snapshot);

    emit(AppExistingSaveState(snapshot: snapshot));
  }
}
