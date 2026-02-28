part of '../app_table.dart';

class _AppTableRow extends StatelessWidget {
  final List<String> row;
  final List<AppTableDataModel> data;
  final List<AppTableActionModel> options;
  final void Function(String value, List<String> row)? onSelect;

  const _AppTableRow({
    required this.row,
    required this.data,
    required this.options,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...row.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;

          final width = data[index].width;

          final valueWidget = Padding(
            padding: const EdgeInsets.symmetric(horizontal: _cellPadding),
            child: Text(value),
          );

          if (width != null) {
            return SizedBox(width: width, child: valueWidget);
          }

          return Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: _minCellWidth),
              child: valueWidget,
            ),
          );
        }),

        if (options.isNotEmpty)
          _AppTableActionsButton(
            row: row,
            onSelect: onSelect,
            options: options,
          ),
      ],
    );
  }
}
