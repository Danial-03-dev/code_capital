import 'package:code_capital/core/storage/models/contract_storage_model.dart';
import 'package:code_capital/core/utils/generators/contract/generate_random_contract.dart';

List<ContractStorageModel> generateRandomContracts({
  int amount = 1,
  int maxLevel = 10,
}) {
  return List.generate(
    amount,
    (index) => generateRandomContract(maxLevel: maxLevel),
  );
}
