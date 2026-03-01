import 'package:flutter/material.dart';

void showAppSnackbar(BuildContext context, String message) {
  final messanger = ScaffoldMessenger.of(context);

  messanger.clearSnackBars();
  messanger.showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Center(child: Text(message)),
    ),
  );
}
