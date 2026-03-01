import 'package:code_capital/features/jobs/features/contracts/view/widgets/sections/contracts_board_section.dart';
import 'package:flutter/material.dart';

class ContractBoardPage extends StatelessWidget {
  const ContractBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [ContractsBoardSection()]));
  }
}
