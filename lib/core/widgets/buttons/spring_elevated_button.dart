import 'package:code_capital/core/widgets/animations/spring_animation.dart';
import 'package:flutter/material.dart';

class SpringElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;

  const SpringElevatedButton({super.key, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SpringAnimation(
      child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}
