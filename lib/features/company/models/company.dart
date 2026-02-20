import 'package:code_capital/features/company/models/employee.dart';

class Company {
  int money;
  List<Employee> employees;

  Company({this.money = 0, this.employees = const []});
}
