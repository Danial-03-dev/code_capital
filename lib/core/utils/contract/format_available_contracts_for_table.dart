import 'package:code_capital/core/storage/models/contract_storage_model.dart';
import 'package:code_capital/core/utils/format/capitalize_words.dart';
import 'package:code_capital/core/utils/format/employee_roles_to_string.dart';
import 'package:code_capital/core/utils/format/number_compact_format.dart';

class AvailableContractTableData {
  final List<String> indexes;
  final List<String> providerNames;
  final List<String> levels;
  final List<String> expireDates;
  final List<String> phases;
  final List<String> rewards;

  const AvailableContractTableData({
    required this.indexes,
    required this.providerNames,
    required this.levels,
    required this.expireDates,
    required this.phases,
    required this.rewards,
  });
}

AvailableContractTableData formatAvailableContractsForTable(
  List<ContractStorageModel> contracts,
) {
  final List<String> indexes = [];
  final List<String> providerNames = [];
  final List<String> levels = [];
  final List<String> expireDates = [];
  final List<String> phases = [];
  final List<String> rewards = [];

  for (int i = 0; i < contracts.length; i++) {
    final contract = contracts[i];

    indexes.add((i + 1).toString());
    providerNames.add(contract.providerName);
    levels.add(contract.level.toString());
    expireDates.add(
      '${contract.daysToExpire} ${contract.daysToExpire == 1 ? 'day' : 'days'}',
    );
    phases.add(capitalizeWords(employeeRolesToString(contract.phases)));
    rewards.add('\$${numberCompactFormat(contract.reward)}');
  }

  return AvailableContractTableData(
    indexes: indexes,
    providerNames: providerNames,
    levels: levels,
    expireDates: expireDates,
    phases: phases,
    rewards: rewards,
  );
}
