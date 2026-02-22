import 'package:flutter/material.dart';

class SpringAnimation extends StatefulWidget {
  final Widget child;

  const SpringAnimation({super.key, required this.child});

  @override
  State<SpringAnimation> createState() => _SpringAnimationState();
}

class _SpringAnimationState extends State<SpringAnimation> {
  bool _isHovered = false;
  bool _isPressed = false;

  double get _scale {
    if (_isPressed) return 0.95;
    if (_isHovered) return 1.08;
    return 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Listener(
        onPointerUp: (_) => setState(() => _isPressed = false),
        onPointerDown: (_) => setState(() => _isPressed = true),
        onPointerCancel: (_) => setState(() => _isPressed = false),
        child: AnimatedScale(
          scale: _scale,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.elasticOut,
          child: widget.child,
        ),
      ),
    );
  }
}
