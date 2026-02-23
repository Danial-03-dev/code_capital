import 'package:code_capital/core/classes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData appThemeProvider({
  required ThemeColors themeColors,
  Brightness? brightness,
}) {
  brightness ??= Brightness.dark;

  final Color primary = themeColors.primary;
  // final Color secondary = themeColors.secondary;

  /// Background layers
  final Color background = themeColors.background;
  final Color surface = themeColors.surface;
  final Color card = themeColors.card;

  /// Text colors
  final Color textPrimary = themeColors.textPrimary;
  final Color textSecondary = themeColors.textSecondary;
  // final Color textDisabled = themeColors.textDisabled;

  /// UI Element Colors
  final Color border = themeColors.border;
  final Color divider = themeColors.divider;

  /// Status colors
  // final Color success = themeColors.success;
  // final Color warning = themeColors.warning;
  final Color error = themeColors.error;
  // final Color info = themeColors.info;

  /// Hint / placeholder
  final Color hint = themeColors.hint;

  final colorScheme = ColorScheme.fromSeed(
    seedColor: primary,
    brightness: brightness,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,

    /// Base Scheme (fallback generator)
    colorScheme: colorScheme,

    /// Primary Colors
    primaryColor: primary,
    primaryColorLight: primary.withValues(alpha: 0.8),
    primaryColorDark: primary.withValues(alpha: 0.9),

    /// Backgrounds
    scaffoldBackgroundColor: background,
    canvasColor: background,
    cardColor: card,

    /// Divider + Borders
    dividerColor: divider,
    shadowColor: Colors.black54,

    /// Icon Theme
    iconTheme: IconThemeData(color: textPrimary),

    /// App Bar
    appBarTheme: AppBarTheme(
      backgroundColor: background,
      foregroundColor: textPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      shape: Border(bottom: BorderSide(color: textPrimary, width: 1)),
    ),

    /// Text Theme
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: textPrimary),
      bodyMedium: TextStyle(color: textSecondary),
      bodySmall: TextStyle(color: textSecondary),

      titleLarge: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      titleMedium: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),

      labelLarge: TextStyle(color: hint, fontSize: 20),
      labelMedium: TextStyle(color: hint, fontSize: 16),
      labelSmall: TextStyle(color: hint, fontSize: 12),
    ),

    /// Elevated Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: textPrimary,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(0),
        minimumSize: Size(0, 0),
      ),
    ),

    /// Outlined Buttons
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        side: BorderSide(color: primary),
      ),
    ),

    /// Text Buttons
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    /// Input Fields
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surface,
      hintStyle: TextStyle(color: hint),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: border),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: border),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primary, width: 1.5),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: error),
      ),
    ),

    /// Snackbars
    snackBarTheme: SnackBarThemeData(
      backgroundColor: surface,
      contentTextStyle: TextStyle(color: textPrimary),
      actionTextColor: primary,
    ),

    /// Bottom Sheets
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: surface),

    /// Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),

    /// Divider Theme
    dividerTheme: DividerThemeData(color: divider, thickness: 1),

    /// Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: surface,
      disabledColor: background,
      selectedColor: primary,
      labelStyle: TextStyle(color: textPrimary),
      secondaryLabelStyle: TextStyle(color: textSecondary),
      padding: const EdgeInsets.all(4),
    ),

    // Dialog Box Theme
    dialogTheme: DialogThemeData(backgroundColor: surface),
  );
}
