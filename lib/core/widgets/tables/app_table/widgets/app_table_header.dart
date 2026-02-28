part of '../app_table.dart';

class _AppTableHeader extends StatelessWidget {
  final List<AppTableDataModel> data;
  final bool hasOptions;

  const _AppTableHeader({required this.data, this.hasOptions = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ClipRRect(
      borderRadius: const BorderRadiusGeometry.only(
        topLeft: Radius.circular(_borderRadius),
        topRight: Radius.circular(_borderRadius),
      ),
      child: ColoredBox(
        color: theme.colorScheme.onPrimary,
        child: Row(
          children: [
            ...data.map((entry) {
              final width = entry.width;

              final rowTitle = Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _cellPadding,
                  vertical: 4,
                ),
                child: Text(
                  entry.label,
                  style: textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );

              if (width != null) {
                return SizedBox(width: width, child: rowTitle);
              }

              return Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: _minCellWidth),
                  child: rowTitle,
                ),
              );
            }),

            if (hasOptions) const SizedBox(width: _optionsWidth),
          ],
        ),
      ),
    );
  }
}
