import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/storage/services/game_snapshot_storage_service.dart';
import 'package:code_capital/features/company/blocs/company_bloc/company_bloc.dart';
import 'package:code_capital/game_loop/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  // Storage
  await Hive.initFlutter();

  final gameBox = await Hive.openBox('game_box');

  // Storage box
  serviceLocator.registerLazySingleton<Box>(() => gameBox);

  // Storage service
  serviceLocator.registerLazySingleton<GameSnapshotStorageService>(
    () => GameSnapshotStorageService(box: serviceLocator<Box>()),
  );

  // Cubits
  serviceLocator.registerLazySingleton<GameLoopCubit>(() => GameLoopCubit());
  serviceLocator.registerFactory<AppCubit>(
    () => AppCubit(
      gameSnapshotStorageService: serviceLocator<GameSnapshotStorageService>(),
    ),
  );

  // Blocs
  serviceLocator.registerFactory<CompanyBloc>(
    () => CompanyBloc(gameLoopCubit: serviceLocator()),
  );
}
