import 'package:code_capital/core/cubits/app_tasks_cubit/app_tasks_cubit.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/jobs/features/contracts/view/widgets/tables/contract_board_table/contract_board_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContractsBoardSection extends StatelessWidget {
  const ContractsBoardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final totalContracts = context.watch<AppTasksCubit>().totalContracts;

    return AppPageSection(
      width: double.infinity,
      title: 'Contract Board - $totalContracts / 2',
      child: const ContractBoardTable(),
    );
  }
}
