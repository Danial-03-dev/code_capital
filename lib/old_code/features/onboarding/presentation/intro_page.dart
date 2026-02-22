import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final companyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void handleCompanyCreate() {
      final companyName = companyNameController.text.trim();

      if (companyName.isEmpty) return;

      context.read<AppCubit>().createNewGame(companyName);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Create Your Company')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 32,
          children: [
            TextField(
              controller: companyNameController,
              decoration: const InputDecoration(labelText: 'Company Name'),
            ),
            ElevatedButton(
              onPressed: handleCompanyCreate,
              child: const Text('Create Company'),
            ),
          ],
        ),
      ),
    );
  }
}
