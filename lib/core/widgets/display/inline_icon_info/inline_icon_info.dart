import 'package:flutter/material.dart';

class InlineIconInfo extends StatelessWidget {
  final IconData icon;
  final String info;
  final Color? color;

  const InlineIconInfo({
    super.key,
    required this.icon,
    this.info = '',
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Icon(icon),
        Text(info, style: textTheme.bodyMedium!.copyWith(color: color)),
      ],
    );
  }
}
