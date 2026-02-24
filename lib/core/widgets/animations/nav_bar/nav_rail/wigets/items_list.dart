part of '../nav_rail.dart';

class _ItemsList extends StatelessWidget {
  final List<({String title, IconData icon})> items;
  final int duration;
  final double? iconSize;
  final bool isExpanded;

  const _ItemsList({
    this.items = const [],
    this.duration = 200,
    this.iconSize,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollConfig(
        child: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(milliseconds: duration),
            padding: EdgeInsets.symmetric(horizontal: isExpanded ? 8 : 0),
            child: Column(
              spacing: 16,
              children: items.map((item) {
                return _Item(
                  isExpanded: isExpanded,
                  icon: item.icon,
                  pageTitle: item.title,
                  iconSize: iconSize,
                  duration: duration,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
