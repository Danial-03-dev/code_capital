import 'package:code_capital/core/themes/dark_theme.dart';
import 'package:code_capital/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

abstract class ThemeCubitState {
  final ThemeData themeData;
  const ThemeCubitState({required this.themeData});
}

class LightThemeState extends ThemeCubitState {
  LightThemeState() : super(themeData: lightTheme);
}

class DarkThemeState extends ThemeCubitState {
  DarkThemeState() : super(themeData: darkTheme);
}
