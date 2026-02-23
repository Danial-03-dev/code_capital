import 'package:code_capital/core/widgets/animations/spring_animation.dart';
import 'package:flutter/material.dart';

class SpringElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? elevation;

  const SpringElevatedButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    this.color,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SpringAnimation(
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
