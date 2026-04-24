import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:code_capital/core/classes/game_engine_classes/task_engine.dart';
import 'package:code_capital/core/classes/sealed_classes/task.dart';
import 'package:code_capital/core/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:code_capital/core/storage/models/contract_storage_model.dart';

class AppTasksCubit extends Cubit<List<Task>> {
  final GameLoopCubit _gameLoopCubit;
  late final StreamSubscription _subscription;

  AppTasksCubit({required GameLoopCubit gameLoopCubit})
    : _gameLoopCubit = gameLoopCubit,
      super([]) {
    _subscription = _gameLoopCubit.stream.listen(_onTick);
  }

  @override
  Future<void> close() async {
    _subscription.cancel();
    super.close();
  }

  int get totalContracts => state.whereType<ContractStorageModel>().length;

  void addTask(Task newTask) {
    emit([...state, newTask]);
  }

  void removeTask(Task task) {
    final newTasks = [...state];
    newTasks.remove(task);
    emit(newTasks);
  }

  void _onTick(int tick) {
    emit(TaskEngine.tick(state));
  }
}
