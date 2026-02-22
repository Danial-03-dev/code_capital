import 'package:code_capital/core/cubits/theme_cubit/theme_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(DarkThemeState());

  void setTheme(ThemeCubitState newTheme) {
    emit(newTheme);
  }
}
