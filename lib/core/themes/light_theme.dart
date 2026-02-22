import 'package:code_capital/core/classes/theme_colors.dart';
import 'package:code_capital/core/themes/app_theme_provider.dart';

final themeColors = ThemeColors();

final lightTheme = appThemeProvider(themeColors: themeColors).copyWith();
