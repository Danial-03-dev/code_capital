import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/storage/models/company_model/company_model.dart';
import 'package:code_capital/core/storage/services/company_storage_service.dart';
import 'package:code_capital/features/company/blocs/company_bloc/company_bloc.dart';
import 'package:code_capital/game_loop/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Storage
  await Hive.initFlutter();

  Hive.registerAdapter(CompanyModelAdapter());

  await Hive.openBox<CompanyModel>('company_box');

  // Storage services
  serviceLocator.registerLazySingleton<CompanyStorageService>(
    () => CompanyStorageService(),
  );

  // Cubits
  serviceLocator.registerLazySingleton<GameLoopCubit>(() => GameLoopCubit());
  serviceLocator.registerFactory<AppCubit>(
    () => AppCubit(
      companyStorageService: serviceLocator<CompanyStorageService>(),
    ),
  );

  // Blocs
  serviceLocator.registerFactory<CompanyBloc>(
    () => CompanyBloc(gameLoopCubit: serviceLocator()),
  );
}
