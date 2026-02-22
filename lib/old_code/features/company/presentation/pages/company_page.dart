import 'package:code_capital/features/company/blocs/company_bloc/company_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Code Capital')),
      body: BlocBuilder<CompanyBloc, CompanyBlocState>(
        builder: (context, state) {
          final company = state.company;
          final contract = state.contract;

          return Padding(
            padding: const EdgeInsetsGeometry.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Money: \$ ${company.money}',
                  style: const TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 20),

                Text(
                  'Contract Progress: ${contract.progress}/${contract.complexity}',
                ),
                const SizedBox(height: 10),

                LinearProgressIndicator(
                  value: contract.progress / contract.complexity,
                ),

                const SizedBox(height: 20),

                if (contract.isCompleted)
                  ElevatedButton(
                    onPressed: () {
                      context.read<CompanyBloc>().add(
                        CompanyBlocResetContractEvent(),
                      );
                    },
                    child: const Text('Start New Contract'),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
