part of 'app_cubit.dart';

abstract class AppCubitState {
  const AppCubitState();
}

class AppLoadingState extends AppCubitState {}

class AppNoCompanyState extends AppCubitState {}

class AppReadyState extends AppCubitState {
  final GameSnapshotModel snapshot;

  const AppReadyState({required this.snapshot});

  Company get company => snapshot.company;
  int get currentWeek => snapshot.currentWeek;
}
