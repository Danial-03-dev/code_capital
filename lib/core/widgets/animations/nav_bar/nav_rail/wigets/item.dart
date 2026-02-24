part of '../nav_rail.dart';

class _Item extends StatelessWidget {
  final bool isExpanded;
  final IconData icon;
  final double? iconSize;
  final String pageTitle;
  final int duration;

  const _Item({
    this.isExpanded = false,
    this.icon = Icons.picture_in_picture_rounded,
    this.iconSize,
    this.pageTitle = '',
    this.duration = 200,
  });

  @override
  Widget build(BuildContext context) {
    final gameNavCubit = context.watch<GameNavCubit>();
    final currentPage = gameNavCubit.getCurrentPage();

    final isSelected = pageTitle == currentPage;

    final colorScheme = Theme.of(context).colorScheme;
    final buttonColor = isSelected ? null : colorScheme.surface;

    void handleNavigation() {
      gameNavCubit.setCurrentPage(pageTitle);
    }

    return SpringElevatedButton(
      scaleMin: isExpanded ? 0.98 : 0.95,
      scaleMax: isExpanded ? 1.05 : 1.08,
      onPressed: handleNavigation,
      color: buttonColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: Duration(milliseconds: duration),
            padding: EdgeInsets.only(left: 2, right: isExpanded ? 8 : 0),
            child: Icon(icon, size: iconSize),
          ),

          ExpandableText(
            isExpanded: isExpanded,
            duration: duration,
            textWidget: Text(
              pageTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
