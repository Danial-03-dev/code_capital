part of '../app_table.dart';

class _AppTableRows extends StatelessWidget {
  final List<List<String>> rows;
  final List<AppTableDataModel> data;
  final List<AppTableActionModel> options;
  final void Function(String value, List<String> row)? onSelect;

  const _AppTableRows({
    required this.rows,
    required this.data,
    required this.options,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rows.length,
      itemBuilder: (context, index) {
        final row = rows[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: _cellPadding),
          child: _AppTableRow(
            row: row,
            data: data,
            onSelect: onSelect,
            options: options,
          ),
        );
      },
    );
  }
}
