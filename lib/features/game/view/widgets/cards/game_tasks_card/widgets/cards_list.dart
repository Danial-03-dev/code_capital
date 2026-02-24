part of '../game_tasks_card.dart';

class _CardsList extends StatelessWidget {
  const _CardsList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollConfig(
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [GameTaskInfoCard()],
            );
          },
        ),
      ),
    );
  }
}
