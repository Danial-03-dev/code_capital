import 'package:flutter/material.dart';

class AppPageSection extends StatelessWidget {
  final String? title;
  final double? height;
  final double? width;
  final Widget? child;

  const AppPageSection({
    this.title,
    super.key,
    this.height,
    this.width,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Expanded(
      child: SizedBox(
        height: height,
        width: width,
        child: Card(
          color: colorScheme.surface,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null)
                  Text(
                    title!,
                    style: textTheme.titleLarge?.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),

                ?child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
