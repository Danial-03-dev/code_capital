import 'package:flutter/material.dart';

class CompanyFormField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  const CompanyFormField({
    super.key,
    this.controller,
    this.onFieldSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      controller: controller,
      maxLength: 24,
      decoration: InputDecoration(
        labelText: 'Company Name',
        hintText: 'Type company name...',
      ),
      validator: (value) {
        value = value?.trim();
        if (value == null || value.isEmpty) {
          return 'Company name is required';
        }

        return null;
      },
    );
  }
}
