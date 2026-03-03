import 'package:bloc/bloc.dart';
import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/app_tasks_cubit/app_tasks_cubit.dart';
import 'package:code_capital/core/storage/models/contract_storage_model.dart';
import 'package:code_capital/core/utils/generators/contract/generate_random_contracts.dart';

class AvailableContractsCubit extends Cubit<List<ContractStorageModel>> {
  final AppCubit _appCubit;
  final AppTasksCubit _appTasksCubit;

  AvailableContractsCubit({
    required AppTasksCubit appTasksCubit,
    required AppCubit appCubit,
  }) : _appTasksCubit = appTasksCubit,
       _appCubit = appCubit,
       super([]);

  void generateNewContracts({int amount = 10, int maxLevel = 10}) {
    emit(generateRandomContracts(amount: amount, maxLevel: maxLevel));
  }

  void acceptContractAt(int index) {
    if (_isContractLimitReached()) return;

    _appTasksCubit.addTask(state[index]);
    removeContractAt(index);
  }

  void removeContractAt(int index) {
    final newContractsList = [...state];

    newContractsList.removeAt(index);
    emit(newContractsList);
  }

  bool _isContractLimitReached() {
    final maxContract = _appCubit.getCompany().maxContracts;
    final totalContracts = _appTasksCubit.totalContracts;

    return totalContracts >= maxContract;
  }
}
