import 'package:flutter/material.dart';

class AppPageBody extends StatelessWidget {
  final Widget child;
  const AppPageBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16), child: child);
  }
}
