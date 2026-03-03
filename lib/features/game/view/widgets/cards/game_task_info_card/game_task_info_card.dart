import 'package:code_capital/core/classes/sealed_classes/task.dart';
import 'package:code_capital/core/utils/format/number_compact_format.dart';
import 'package:code_capital/core/utils/tasks/get_task_type.dart';
import 'package:flutter/material.dart';

part 'widgets/card_footer.dart';
part 'widgets/card_header.dart';

class GameTaskInfoCard extends StatelessWidget {
  final Task task;

  const GameTaskInfoCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      height: 216,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CardHeader(task: task),

              _CardFooter(task: task),
            ],
          ),
        ),
      ),
    );
  }
}
