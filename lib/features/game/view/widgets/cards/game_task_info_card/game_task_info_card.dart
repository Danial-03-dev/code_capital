import 'package:flutter/material.dart';

part 'widgets/card_header.dart';
part 'widgets/card_footer.dart';

class GameTaskInfoCard extends StatelessWidget {
  const GameTaskInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 256,
      height: 216,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_CardHeader(), _CardFooter()],
          ),
        ),
      ),
    );
  }
}
