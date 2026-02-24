part of '../nav_rail.dart';

class _Header extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isExpanded;
  final String title;
  final double? iconSize;
  final int duration;

  const _Header({
    this.onPressed,
    this.isExpanded = false,
    this.title = '',
    this.iconSize,
    this.duration = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedPadding(
          duration: Duration(milliseconds: duration),
          padding: EdgeInsets.only(left: 6, right: isExpanded ? 8 : 0),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.menu, size: iconSize),
          ),
        ),

        ExpandableText(
          isExpanded: isExpanded,
          duration: duration,
          textWidget: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
