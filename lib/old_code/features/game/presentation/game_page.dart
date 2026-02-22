import 'package:code_capital/features/company/models/company.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  final Company company;

  const GamePage({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(company.name)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Money \$${company.money}', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('Week: ${company.week}'),
            const SizedBox(height: 30),

            if (company.currentContract != null)
              Column(
                spacing: 12,
                children: [
                  const Text('Current Contract'),
                  LinearProgressIndicator(
                    value:
                        company.currentContract!.progress /
                        company.currentContract!.complexity,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
