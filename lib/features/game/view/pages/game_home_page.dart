import 'package:code_capital/core/widgets/page/app_page_body.dart';
import 'package:code_capital/features/game/view/widgets/cards/game_company_info_card/game_company_info_card.dart';
import 'package:flutter/material.dart';

class GameHomePage extends StatelessWidget {
  const GameHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPageBody(child: Column(children: [GameCompanyInfoCard()])),
    );
  }
}
