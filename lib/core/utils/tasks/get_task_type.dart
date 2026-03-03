import 'package:code_capital/core/classes/sealed_classes/task.dart';
import 'package:code_capital/core/storage/models/contract_storage_model.dart';

String getTaskType(Task task) {
  if (task is ContractStorageModel) return 'Contract';

  return '';
}
