import 'package:flutter_bloc/flutter_bloc.dart';

class AppTopNavCubit extends Cubit<int> {
  AppTopNavCubit() : super(0);

  void setNavIndex(int newIndex) {
    emit(newIndex);
  }
}
