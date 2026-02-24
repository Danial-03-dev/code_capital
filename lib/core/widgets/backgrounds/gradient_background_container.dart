import 'package:flutter/material.dart';

class GradientBackgroundContainer extends StatelessWidget {
  final Widget? child;
  final double borderRadius;

  const GradientBackgroundContainer({
    super.key,
    this.child,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final topColor = themeContext.colorScheme.surface;
    final midColor = themeContext.colorScheme.onPrimary;
    final botColor = themeContext.colorScheme.surface;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [topColor, midColor, botColor],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: child,
      ),
    );
  }
}
