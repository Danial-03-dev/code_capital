import 'package:flutter/material.dart';

class GlowBackgroundContainer extends StatelessWidget {
  final Widget? child;
  final double borderRadius;

  const GlowBackgroundContainer({super.key, this.child, this.borderRadius = 0});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final glowColor = themeContext.primaryColor;
    final bgColor = themeContext.colorScheme.onPrimary;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.3),
            radius: 1.2,
            colors: [glowColor, bgColor],
            stops: [0.0, 0.7],
          ),
        ),
        child: child,
      ),
    );
  }
}
