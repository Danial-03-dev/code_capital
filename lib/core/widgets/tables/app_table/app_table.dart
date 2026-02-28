import 'package:code_capital/core/widgets/buttons/app_popup_menu_button.dart';
import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:flutter/material.dart';

part 'widgets/app_table_actions_button.dart';
part 'widgets/app_table_body.dart';
part 'widgets/app_table_header.dart';
part 'widgets/app_table_row.dart';
part 'widgets/app_table_rows.dart';

class AppTableDataModel {
  final String label;
  final List<String> values;
  final double? width;

  const AppTableDataModel({
    required this.label,
    this.values = const [],
    this.width,
  });
}

class AppTableActionModel {
  final String value;
  final IconData icon;

  const AppTableActionModel({required this.value, required this.icon});
}

const double _borderRadius = 12;
const double _cellPadding = 8;
const double _minCellWidth = 64;
const double _optionsWidth = 64;

class AppTable extends StatelessWidget {
  final List<AppTableDataModel> data;
  final String emptyTableText;
  final List<AppTableActionModel> options;
  final void Function(String value, List<String> row)? onSelect;

  const AppTable({
    super.key,
    this.emptyTableText = 'No Content',
    this.data = const [],
    this.options = const [],
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomScrollConfig(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicWidth(
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _AppTableHeader(
                          data: data,
                          hasOptions: options.isNotEmpty,
                        ),
                        _AppTableBody(
                          data: data,
                          emptyTableText: emptyTableText,
                          onSelect: onSelect,
                          options: options,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
