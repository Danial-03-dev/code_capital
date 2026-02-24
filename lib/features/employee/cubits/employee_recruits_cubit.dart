import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employees_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeRecruitsCubit extends Cubit<List<EmployeeStorageModel>> {
  EmployeeRecruitsCubit() : super([]);

  void generateNewRecruits() {
    final newRecruits = generateRandomEmployeesList(amount: 5, maxSkill: 1);

    emit(newRecruits);
  }
}
