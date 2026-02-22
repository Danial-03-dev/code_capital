import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/widgets/buttons/spring_elevated_button.dart';
import 'package:code_capital/features/game/view/widgets/inputs/form_fields/company_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewGameForm extends StatefulWidget {
  const NewGameForm({super.key});

  @override
  State<NewGameForm> createState() => _NewGameFormState();
}

class _NewGameFormState extends State<NewGameForm> {
  final _formKey = GlobalKey<FormState>();

  final companyNameController = TextEditingController();

  @override
  void dispose() {
    companyNameController.dispose();

    super.dispose();
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      final companyName = companyNameController.text.trim();

      context.read<AppCubit>().startNewSave(companyName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 432),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 12,
          children: [
            CompanyFormField(
              controller: companyNameController,
              onFieldSubmitted: (_) {
                _handleSubmit();
              },
              onChanged: (_) {
                _formKey.currentState!.validate();
              },
            ),
            SpringElevatedButton(
              onPressed: _handleSubmit,
              child: Text(
                'Create Company',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
