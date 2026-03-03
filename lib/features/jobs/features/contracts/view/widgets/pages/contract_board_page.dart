import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/app_tasks_cubit/app_tasks_cubit.dart';
import 'package:code_capital/features/jobs/features/contracts/cubits/available_contracts_cubit.dart';
import 'package:code_capital/features/jobs/features/contracts/view/widgets/sections/contracts_board_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContractBoardPage extends StatelessWidget {
  const ContractBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AvailableContractsCubit>(
      create: (_) => AvailableContractsCubit(
        appCubit: context.read<AppCubit>(),
        appTasksCubit: context.read<AppTasksCubit>(),
      )..generateNewContracts(maxLevel: 2),
      child: const Scaffold(body: Column(children: [ContractsBoardSection()])),
    );
  }
}
