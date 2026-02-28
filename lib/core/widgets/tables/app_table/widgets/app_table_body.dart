part of '../app_table.dart';

class _AppTableBody extends StatelessWidget {
  final List<AppTableDataModel> data;
  final String emptyTableText;
  final List<AppTableActionModel> options;
  final void Function(String value, List<String> row)? onSelect;

  const _AppTableBody({
    required this.data,
    required this.emptyTableText,
    required this.options,
    required this.onSelect,
  });

  List<List<String>> getRowsFromData() {
    final cols = data.map((entry) => entry.values).toList();

    if (cols.isEmpty) return [];

    final totalRows = cols
        .map((col) => col.length)
        .reduce((a, b) => a > b ? a : b); // longest column length

    final rows = List.generate(
      totalRows,
      (i) => cols.map((col) {
        return i < col.length ? col[i] : '';
      }).toList(),
    );

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final rows = getRowsFromData();

    return Expanded(
      child: SizedBox(
        // This sizebox helps to layout ListView, initially it sets the width to any random min-width value,
        // Later the parent column changes the width to column-width because of CrossAxisAlignment.stretch
        // This prevents horizontal layout erros
        width: 1,
        child: ClipRRect(
          borderRadius: const BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(_borderRadius),
            bottomRight: Radius.circular(_borderRadius),
          ),
          child: ColoredBox(
            color: theme.cardColor,
            child: rows.isEmpty
                ? Center(
                    child: Text(emptyTableText, style: textTheme.labelLarge),
                  )
                : _AppTableRows(
                    rows: rows,
                    data: data,
                    onSelect: onSelect,
                    options: options,
                  ),
          ),
        ),
      ),
    );
  }
}
