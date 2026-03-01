import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyEmployeesCubit extends Cubit<List<EmployeeStorageModel>> {
  CompanyEmployeesCubit() : super([]);

  void load(List<EmployeeStorageModel> employees) {
    emit(employees);
  }

  void addEmployee(EmployeeStorageModel newEmployee) {
    emit([...state, newEmployee]);
  }

  void removeEmployeeAt(int index) {
    if (index < 0 || index >= state.length) return;

    final newEmployeeList = [...state];
    newEmployeeList.removeAt(index);

    emit(newEmployeeList);
  }
}
