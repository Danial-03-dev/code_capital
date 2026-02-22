import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:code_capital/core/cubits/theme_cubit/theme_cubit.dart';
import 'package:code_capital/core/cubits/theme_cubit/theme_cubit_state.dart';
import 'package:code_capital/core/dependencies_injection/service_locator.dart';
import 'package:code_capital/core/widgets/game/my_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  serviceLocator<GameLoopCubit>().start();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider<GameLoopCubit>.value(
          value: serviceLocator<GameLoopCubit>(),
        ),
        BlocProvider<AppCubit>(
          create: (_) => serviceLocator<AppCubit>()..load(),
        ),
      ],
      child: BlocConsumer<ThemeCubit, ThemeCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          final theme = state.themeData;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Code Capital',
            theme: theme,
            home: MyGame(),
          );
        },
      ),
    );
  }
}
