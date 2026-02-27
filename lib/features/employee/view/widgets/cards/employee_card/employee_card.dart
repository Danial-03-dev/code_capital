import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/utils/format/number_compact_format.dart';
import 'package:code_capital/core/widgets/backgrounds/gradient_background_container.dart';
import 'package:code_capital/core/widgets/buttons/spring_elevated_button.dart';
import 'package:code_capital/core/widgets/display/inline_icon_info/inline_icon_info.dart';
import 'package:code_capital/features/employee/cubits/employee_recruits_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part 'widgets/header_avatar.dart';
part 'widgets/header_employ_info.dart';
part 'widgets/card_header.dart';
part 'widgets/employ_info.dart';
part 'widgets/hire_button.dart';

class EmployeeCard extends StatelessWidget {
  final EmployeeStorageModel employee;
  final int employeeIndex;

  const EmployeeCard({
    super.key,
    required this.employee,
    required this.employeeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      child: Card(
        elevation: 2,
        child: GradientBackgroundContainer(
          borderRadius: 12,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 32,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CardHeader(employee: employee),
                _EmployInfo(employee: employee),
                _HireButton(employee: employee, employeeIndex: employeeIndex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
