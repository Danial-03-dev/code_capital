import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/app_tasks_cubit/app_tasks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool isContractsLimitReached(BuildContext context) {
  final maxContracts = context.read<AppCubit>().getCompany().maxContracts;
  final totalContracts = context.read<AppTasksCubit>().totalContracts;

  return totalContracts >= maxContracts;
}
