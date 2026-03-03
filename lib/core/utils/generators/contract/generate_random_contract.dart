import 'package:code_capital/core/constants/employ_roles.dart';
import 'package:code_capital/core/storage/models/contract_storage_model.dart';
import 'package:code_capital/core/utils/generators/contract/generate_random_contract_stats.dart';
import 'package:code_capital/core/utils/generators/generate_random_company_name.dart';

ContractStorageModel generateRandomContract({int maxLevel = 10}) {
  final providerName = generateRandomCompanyName();
  final (:complexity, :daysToExpire, :level, :reward) =
      generateRandomContractStats(maxLevel: maxLevel);
  final phases = [EmployeeRoles.designer, EmployeeRoles.programmer];

  return ContractStorageModel(
    providerName: providerName,
    reward: reward,
    complexity: complexity,
    phases: phases,
    level: level,
    daysToExpire: daysToExpire,
  );
}
