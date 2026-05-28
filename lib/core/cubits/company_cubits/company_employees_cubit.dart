import 'package:code_capital/core/constants/employ_roles.dart';
import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/types/types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyEmployeesCubit extends Cubit<List<EmployeeStorageModel>> {
  final EmployeeRolesTotalSkillType _employeeRolesTotalSkill = {};

  CompanyEmployeesCubit() : super([]);

  // *****CRUD*****
  void load(List<EmployeeStorageModel> employees) {
    _employeeRolesTotalSkill.clear();
    emit(employees);
  }

  void addEmployee(EmployeeStorageModel newEmployee) {
    _employeeRolesTotalSkill.clear();
    emit([...state, newEmployee]);
  }

  void removeEmployeeAt(int index) {
    if (index < 0 || index >= state.length) return;

    final newEmployeeList = [...state];
    newEmployeeList.removeAt(index);

    _employeeRolesTotalSkill.clear();
    emit(newEmployeeList);
  }

  // *****Employ Total Skill****
  int getTotalEmployeesRoleSkill(EmployeeRoles role) {
    if (!_employeeRolesTotalSkill.containsKey(role)) {
      _calculateEmployeeRoleTotalSkill(role);
    }

    return _employeeRolesTotalSkill[role]!;
  }

  EmployeeRolesTotalSkillType getTotalEmployeesRolesSkill() {
    _calculateEmployeeRolesTotalSkill();
    return _employeeRolesTotalSkill;
  }

  void _calculateEmployeeRoleTotalSkill(EmployeeRoles role) {
    _employeeRolesTotalSkill[role] = state
        .where((employee) => employee.role == role)
        .fold(0, (sum, employee) => sum + employee.skill);
  }

  void _calculateEmployeeRolesTotalSkill() {
    for (final role in EmployeeRoles.values) {
      if (!_employeeRolesTotalSkill.containsKey(role)) {
        _calculateEmployeeRoleTotalSkill(role);
      }
    }
  }
}
