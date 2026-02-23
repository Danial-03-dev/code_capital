import 'package:code_capital/core/constants/nav_constants.dart';
import 'package:code_capital/core/cubits/game_nav_cubit/game_nav_cubit.dart';
import 'package:code_capital/core/widgets/nav_bars/game_nav_bar/game_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Side menu
          const GameNavBar(),

          // Main Content
          Expanded(
            child: BlocConsumer<GameNavCubit, String>(
              listener: (_, _) {},
              builder: (context, state) {
                return NavConstants.navList
                    .where((navItem) => navItem.title == state)
                    .first
                    .page;
              },
            ),
          ),
        ],
      ),
    );
  }
}
