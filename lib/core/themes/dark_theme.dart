import 'package:code_capital/core/classes/theme_colors.dart';
import 'package:code_capital/core/themes/app_theme_provider.dart';
import 'package:flutter/material.dart';

final themeColors = ThemeColors(
  /// Core Colors
  primary: const Color(0xFF00BFA5), // Teal
  secondary: const Color(0xFF26A69A),

  /// Background Layers (Dark Theme)
  background: const Color(0xFF0A0F0F),
  surface: const Color(0xFF111818),
  card: const Color(0xFF161F1F),

  /// Text Colors
  textPrimary: Colors.white,
  textSecondary: Colors.white70,
  textDisabled: Colors.white38,

  /// UI Elements
  border: const Color(0xFF1F2E2E),
  divider: const Color(0xFF243434),

  /// Status Colors (Adjusted for dark theme visibility)
  success: const Color(0xFF2ECC71),
  warning: const Color(0xFFF1C40F),
  error: const Color(0xFFE74C3C),
  info: const Color(0xFF3498DB),

  /// Hint / Placeholder
  hint: Colors.white54,
);

final darkTheme = appThemeProvider(themeColors: themeColors).copyWith();
