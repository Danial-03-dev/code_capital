import 'package:code_capital/core/utils/contract/format_available_contracts_for_table.dart';
import 'package:code_capital/core/utils/contract/is_contracts_limit_reached.dart';
import 'package:code_capital/core/utils/snackbar/show_app_snackbar.dart';
import 'package:code_capital/core/widgets/tables/app_table/app_table.dart';
import 'package:code_capital/features/jobs/features/contracts/cubits/available_contracts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum _ActionType {
  accpept,
  remove;

  @override
  String toString() {
    switch (this) {
      case _ActionType.accpept:
        return 'Accept';
      case _ActionType.remove:
        return 'Remove';
    }
  }
}

class ContractBoardTable extends StatelessWidget {
  const ContractBoardTable({super.key});

  @override
  Widget build(BuildContext context) {
    final availableContracts = context.watch<AvailableContractsCubit>().state;

    final AvailableContractTableData(
      indexes: indexes,
      providerNames: providerNames,
      levels: levels,
      expireDates: expireDates,
      phases: phases,
      rewards: rewards,
    ) = formatAvailableContractsForTable(
      availableContracts,
    );

    void handleSelect(String value, List<String> row) {
      final availableContractsCubit = context.read<AvailableContractsCubit>();

      final contractIndex =
          int.parse(row[0]) - 1; // Subtract 1 to make index start from 0

      if (value == _ActionType.accpept.toString()) {
        if (isContractsLimitReached(context)) {
          showAppSnackbar(context, 'Upgrade your plan to add more contracts.');
          return;
        }

        availableContractsCubit.acceptContractAt(contractIndex);
      }

      if (value == _ActionType.remove.toString()) {
        availableContractsCubit.removeContractAt(contractIndex);
      }
    }

    return AppTable(
      onSelect: handleSelect,
      emptyTableText: 'No more contracts available...',
      data: [
        AppTableDataModel(label: '#', values: indexes, width: 48),
        AppTableDataModel(label: 'Company', values: providerNames),
        AppTableDataModel(label: 'Level', values: levels),
        AppTableDataModel(label: 'Deadline', values: expireDates),
        AppTableDataModel(label: 'Required roles', values: phases),
        AppTableDataModel(label: 'Reward', values: rewards),
      ],
      options: [
        AppTableActionModel(
          value: _ActionType.accpept.toString(),
          icon: Icons.check_box_rounded,
        ),
        AppTableActionModel(
          value: _ActionType.remove.toString(),
          icon: Icons.delete,
        ),
      ],
    );
  }
}
