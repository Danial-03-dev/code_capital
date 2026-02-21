import 'package:code_capital/features/company/blocs/company_bloc/company_bloc.dart';
import 'package:code_capital/game_loop/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Cubits
  serviceLocator.registerLazySingleton<GameLoopCubit>(() => GameLoopCubit());

  // Blocs
  serviceLocator.registerFactory<CompanyBloc>(
    () => CompanyBloc(gameLoopCubit: serviceLocator()),
  );
}
