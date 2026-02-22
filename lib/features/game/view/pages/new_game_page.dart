import 'package:code_capital/core/widgets/page/app_page_body.dart';
import 'package:code_capital/features/game/view/widgets/forms/new_game_form.dart';
import 'package:code_capital/features/game/view/widgets/text/new_game_title_text.dart';
import 'package:flutter/material.dart';

class NewGamePage extends StatelessWidget {
  const NewGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppPageBody(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [NewGameTitleText(), NewGameForm()],
          ),
        ),
      ),
    );
  }
}
