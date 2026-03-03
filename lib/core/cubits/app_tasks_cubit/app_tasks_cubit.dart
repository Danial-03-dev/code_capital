import 'package:bloc/bloc.dart';
import 'package:code_capital/core/classes/sealed_classes/task.dart';
import 'package:code_capital/core/storage/models/contract_storage_model.dart';

class AppTasksCubit extends Cubit<List<Task>> {
  AppTasksCubit() : super([]);

  int get totalContracts => state.whereType<ContractStorageModel>().length;

  void addTask(Task newTask) {
    emit([...state, newTask]);
  }

  void removeTask(Task task) {
    final newTasks = [...state];
    newTasks.remove(task);
    emit(newTasks);
  }
}
