import 'package:flutter/material.dart';

class SpringAnimation extends StatefulWidget {
  final Widget child;
  final double scaleMin;
  final double scaleMax;

  const SpringAnimation({
    super.key,
    required this.child,
    this.scaleMin = 0.95,
    this.scaleMax = 1.08,
  });

  @override
  State<SpringAnimation> createState() => _SpringAnimationState();
}

class _SpringAnimationState extends State<SpringAnimation> {
  bool _isHovered = false;
  bool _isPressed = false;

  double get _scale {
    if (_isPressed) return widget.scaleMin;
    if (_isHovered) return widget.scaleMax;
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
