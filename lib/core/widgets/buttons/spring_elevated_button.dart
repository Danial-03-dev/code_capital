import 'package:code_capital/core/widgets/animations/spring_animation.dart';
import 'package:flutter/material.dart';

class SpringElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? elevation;
  final double scaleMin;
  final double scaleMax;

  const SpringElevatedButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    this.color,
    this.elevation,
    this.scaleMin = 0.95,
    this.scaleMax = 1.08,
  });

  @override
  Widget build(BuildContext context) {
    return SpringAnimation(
      scaleMin: scaleMin,
      scaleMax: scaleMax,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: elevation,
        ),
        child: Padding(
          padding:
              padding ??
              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: child,
        ),
      ),
    );
  }
}
