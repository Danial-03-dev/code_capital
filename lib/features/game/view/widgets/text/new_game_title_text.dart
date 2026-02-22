import 'package:flutter/material.dart';

class NewGameTitleText extends StatelessWidget {
  const NewGameTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 64);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('C', style: textStyle),
        Text(
          'ode',
          style: textStyle.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        Text('.', style: textStyle),
        const SizedBox(width: 20),
        Text('C', style: textStyle),
        Text(
          'apital',
          style: textStyle.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        Text('.', style: textStyle),
      ],
    );
  }
}
