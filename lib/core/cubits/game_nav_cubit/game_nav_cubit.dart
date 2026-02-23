import 'package:code_capital/core/constants/nav_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameNavCubit extends Cubit<String> {
  GameNavCubit() : super(NavConstants.navList[0].title);

  void setCurrentPage(String pageTitle) {
    emit(pageTitle);
  }

  String getCurrentPage() {
    return state;
  }
}
