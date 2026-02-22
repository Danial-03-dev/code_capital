import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/widgets/page/app_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameHomePage extends StatelessWidget {
  const GameHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppCubit>().state;

    if (state is AppExistingSaveState) {
      final snapshot = state.snapshot;

      final companyName = snapshot.companyName;

      return Scaffold(
        body: AppPageBody(
          child: Column(
            children: [
              Text(
                companyName,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Text(
          'This page requires a game snapshot. The game currently does not have a snapshot. Please create a new save.',
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}
