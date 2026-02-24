import 'package:flutter/material.dart';

part 'widget/tool_tip.dart';

class StatRow extends StatelessWidget {
  final String label;
  final String current;
  final String? max;
  final String? toolTip;

  const StatRow({
    super.key,
    this.label = '',
    this.current = '',
    this.max,
    this.toolTip,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ToolTip(
          message: toolTip,
          child: Text('$label:', style: textTheme.titleSmall),
        ),

        _ToolTip(
          message: toolTip,
          child: Row(
            children: [
              Text(current, style: textTheme.bodyLarge),
              Text(max != null ? '/$max' : '', style: textTheme.labelMedium),
            ],
          ),
        ),
      ],
    );
  }
}
