import 'package:code_capital/core/dependency_injection/service_locator.dart';
import 'package:code_capital/features/company/blocs/company_bloc/company_bloc.dart';
import 'package:code_capital/features/company/presentation/pages/company_page.dart';
import 'package:code_capital/game_loop/cubits/game_loop_cubit/game_loop_cubit.dart';
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
        BlocProvider<GameLoopCubit>.value(
          value: serviceLocator<GameLoopCubit>(),
        ),
        BlocProvider<CompanyBloc>(create: (_) => serviceLocator<CompanyBloc>()),
      ],
      child: const MaterialApp(
        title: 'Code Capital',
        debugShowCheckedModeBanner: false,
        home: CompanyPage(),
      ),
    );
  }
}
