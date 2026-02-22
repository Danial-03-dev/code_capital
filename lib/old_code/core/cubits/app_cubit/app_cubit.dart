import 'package:code_capital/core/storage/models/game_snapshot_model.dart';
import 'package:code_capital/core/storage/services/game_snapshot_storage_service.dart';
import 'package:code_capital/features/company/models/company.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  final GameSnapshotStorageService _storage;

  AppCubit({required GameSnapshotStorageService gameSnapshotStorageService})
    : _storage = gameSnapshotStorageService,
      super(AppLoadingState());

  void loadGame() {
    final snapshot = _storage.load();

    if (snapshot == null) {
      emit(AppNoCompanyState());
      return;
    }

    emit(AppReadyState(snapshot: snapshot));
  }

  void createNewGame(String companyName) async {
    final startingMoney = 1000;

    final company = Company(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      name: companyName,
      money: startingMoney,
    );

    final snapshot = GameSnapshotModel(company: company, currentWeek: 1);

    await _storage.save(snapshot: snapshot);

    emit(AppReadyState(snapshot: snapshot));
  }
}
