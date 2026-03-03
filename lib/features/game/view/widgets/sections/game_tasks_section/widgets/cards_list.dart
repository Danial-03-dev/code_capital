part of '../game_tasks_section.dart';

class _CardsList extends StatelessWidget {
  const _CardsList();

  @override
  Widget build(BuildContext context) {
    final tasks = context.watch<AppTasksCubit>().state;

    return Expanded(
      child: CustomScrollConfig(
        child: ListView.builder(
          itemCount: tasks.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final task = tasks[index];

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [GameTaskInfoCard(task: task)],
            );
          },
        ),
      ),
    );
  }
}
