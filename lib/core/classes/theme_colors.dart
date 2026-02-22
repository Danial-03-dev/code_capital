// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeColors {
  final Color primary;
  final Color secondary;

  /// Background layers
  final Color background;
  final Color surface;
  final Color card;

  /// Text colors
  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;

  /// UI Element Colors
  final Color border;
  final Color divider;

  /// Status colors
  final Color success;
  final Color warning;
  final Color error;
  final Color info;

  /// Hint / placeholder
  final Color hint;

  const ThemeColors({
    this.primary = Colors.deepPurple,
    this.secondary = Colors.purpleAccent,

    /// Dark theme friendly defaults
    this.background = const Color(0xFF121212),
    this.surface = const Color(0xFF1E1E1E),
    this.card = const Color(0xFF1A1A1A),

    this.textPrimary = Colors.white,
    this.textSecondary = Colors.white70,
    this.textDisabled = Colors.white38,

    this.border = const Color(0xFF2A2A2A),
    this.divider = const Color(0xFF2A2A2A),

    this.success = Colors.green,
    this.warning = Colors.orange,
    this.error = Colors.red,
    this.info = Colors.blue,

    this.hint = Colors.white54,
  });
}
