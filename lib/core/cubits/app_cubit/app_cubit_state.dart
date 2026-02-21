part of 'app_cubit.dart';

abstract class AppCubitState {
  const AppCubitState();
}

class AppLoadingState extends AppCubitState {}

class AppNoCompanyState extends AppCubitState {}

class AppReadyState extends AppCubitState {
  final Company company;

  const AppReadyState({required this.company});
}
