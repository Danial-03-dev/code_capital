import 'package:flutter/material.dart';

class AppPopupMenuButton<T> extends StatelessWidget {
  final List<PopupMenuEntry<T>> Function(BuildContext) itemBuilder;
  final void Function(T)? onSelected;
  final IconData icon;
  const AppPopupMenuButton({
    super.key,
    required this.itemBuilder,
    this.onSelected,
    this.icon = Icons.more_vert,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopupMenuButton(
      elevation: 4,
      offset: const Offset(0, 32),
      menuPadding: const EdgeInsets.all(0),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        padding: const EdgeInsets.all(2),
        minimumSize: const Size(0, 0),
      ),
      icon: Icon(icon, size: 24, color: theme.primaryColor),
      onSelected: onSelected,
      itemBuilder: itemBuilder,
      color: theme.colorScheme.onPrimary,
    );
  }
}
