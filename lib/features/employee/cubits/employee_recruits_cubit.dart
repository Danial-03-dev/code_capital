import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/utils/generators/employee/generate_random_employees_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeRecruitsCubit extends Cubit<List<EmployeeStorageModel>> {
  final CompanyEmployeesCubit _companyEmployeesCubit;

  EmployeeRecruitsCubit({required CompanyEmployeesCubit companyEmployeesCubit})
    : _companyEmployeesCubit = companyEmployeesCubit,
      super([]);

  void generateNewRecruits() {
    final newRecruits = generateRandomEmployeesList(amount: 5, maxSkill: 1);

    emit(newRecruits);
  }

  void hireEmployee(int employeeIndex) {
    if (employeeIndex >= state.length) employeeIndex = state.length - 1;
    if (employeeIndex < 0) employeeIndex = 0;

    final newEmployee = state.removeAt(employeeIndex);

    _companyEmployeesCubit.addEmployee(newEmployee);

    emit([...state]);
  }
}
