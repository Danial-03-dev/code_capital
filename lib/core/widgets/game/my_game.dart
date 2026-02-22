import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/features/game/view/pages/game_home_page.dart';
import 'package:code_capital/features/game/view/pages/new_game_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AppLoadingState) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (state is AppExistingSaveState) {
          return const GameHomePage();
        }

        return const NewGamePage();
      },
    );
  }
}
