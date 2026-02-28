part of '../app_table.dart';

class _AppTableActionsButton extends StatelessWidget {
  final List<String> row;
  final List<AppTableActionModel> options;
  final void Function(String value, List<String> row)? onSelect;

  const _AppTableActionsButton({
    required this.row,
    required this.options,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return SizedBox(
      width: _optionsWidth,
      child: Center(
        child: AppPopupMenuButton<String>(
          onSelected: (value) {
            onSelect?.call(value, row);
          },
          itemBuilder: (context) =>
              options.map<PopupMenuEntry<String>>((option) {
                final value = option.value;
                final icon = option.icon;

                return PopupMenuItem(
                  height: 36,
                  value: value,
                  child: Row(
                    spacing: 8,
                    children: [
                      Icon(icon, size: 20),
                      Expanded(child: Text(value, style: textTheme.bodyLarge)),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
