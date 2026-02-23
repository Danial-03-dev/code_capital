import 'dart:ui';

import 'package:flutter/material.dart';

class CustomScrollConfig extends StatelessWidget {
  final Widget child;
  const CustomScrollConfig({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      child: child,
    );
  }
}
