import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:code_capital/core/storage/storage_services/game_snapshot_storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  // Storage
  await Hive.initFlutter();

  // Storage box
  final gameBox = await Hive.openBox('game_box');
  serviceLocator.registerLazySingleton<Box>(() => gameBox);

  // Storage service
  serviceLocator.registerLazySingleton<GameSnapshotStorageService>(
    () => GameSnapshotStorageService(box: serviceLocator<Box>()),
  );

  // Cubits
  serviceLocator.registerLazySingleton<GameLoopCubit>(() => GameLoopCubit());
  serviceLocator.registerFactory<AppCubit>(
    () => AppCubit(storage: serviceLocator<GameSnapshotStorageService>()),
  );
}
