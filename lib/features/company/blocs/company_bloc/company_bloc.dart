import 'dart:async';

import 'package:code_capital/features/company/models/company.dart';
import 'package:code_capital/features/company/models/contract.dart';
import 'package:code_capital/features/company/models/employee.dart';
import 'package:code_capital/game_engine/simulation_engine.dart';
import 'package:code_capital/game_loop/cubits/game_loop_cubit/game_loop_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'company_bloc_event.dart';
part 'company_bloc_state.dart';

class CompanyBloc extends Bloc<CompanyBlocEvent, CompanyBlocState> {
  final SimulationEngine _engine = SimulationEngine();
  final GameLoopCubit _gameLoopCubit;
  late final StreamSubscription _tickSub;

  CompanyBloc({required GameLoopCubit gameLoopCubit})
    : _gameLoopCubit = gameLoopCubit,
      super(
        CompanyBlocState(
          company: Company(
            money: 1000,
            employees: [Employee(programmingSkill: 2)],
          ),
          contract: Contract(requiredSkill: 1, complexity: 20, reward: 500),
        ),
      ) {
    _tickSub = _gameLoopCubit.stream.listen((_) {
      add(CompanyBlocTickEvent());
    });

    on<CompanyBlocTickEvent>((event, emit) {
      final company = state.company;
      final contract = state.contract;

      _engine.processTick(company: company, contract: contract);

      emit(state.copyWith(company: company, contract: contract));
    });

    on<CompanyBlocResetContractEvent>((event, emit) {
      final contract = state.contract;
      _engine.resetContract(contract);

      emit(state.copyWith(contract: contract));
    });
  }

  @override
  Future<void> close() {
    _tickSub.cancel();
    return super.close();
  }
}
