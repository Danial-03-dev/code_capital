part of 'app_cubit.dart';

abstract class AppCubitState {
  const AppCubitState();
}

class AppLoadingState extends AppCubitState {}

class AppNoSaveState extends AppCubitState {}

class AppExistingSaveState extends AppCubitState {
  final GameSnapshotModel snapshot;

  const AppExistingSaveState({required this.snapshot});
}
