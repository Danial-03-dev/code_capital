part of '../stat_row.dart';

class _ToolTip extends StatelessWidget {
  final Widget child;
  final String? message;

  const _ToolTip({required this.child, this.message});

  @override
  Widget build(BuildContext context) {
    final showToolTip = message != null;

    if (showToolTip) {
      return Tooltip(
        message: message,
        preferBelow: false,
        verticalOffset: 12,
        child: child,
      );
    }

    return child;
  }
}
