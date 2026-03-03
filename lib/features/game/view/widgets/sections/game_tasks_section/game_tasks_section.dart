import 'package:code_capital/core/cubits/app_tasks_cubit/app_tasks_cubit.dart';
import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/game/view/widgets/cards/game_task_info_card/game_task_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/cards_list.dart';

class GameTasksSection extends StatelessWidget {
  final double? height;

  const GameTasksSection({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    final totalTasks = context.read<AppTasksCubit>().state.length;

    return AppPageSection(
      title: 'Tasks - $totalTasks',
      height: height,
      child: const _CardsList(),
    );
  }
}
