import 'package:flutter/material.dart';

class ExpandableText extends StatelessWidget {
  final bool isExpanded;
  final int duration;
  final Text? textWidget;

  const ExpandableText({
    super.key,
    this.isExpanded = true,
    this.duration = 200,
    this.textWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: AnimatedAlign(
        alignment: Alignment.centerLeft,
        duration: Duration(milliseconds: duration),
        widthFactor: isExpanded ? 1 : 0,
        child: textWidget,
      ),
    );
  }
}
