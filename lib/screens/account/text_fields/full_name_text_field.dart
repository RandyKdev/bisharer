import 'package:flutter/material.dart';
import 'package:bisharer/screens/account/utils/form_props.dart';

class FullNameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fullNameController,
      decoration: InputDecoration(
        hintText: 'Full Name',
        labelText: 'Full Name',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.account_circle_outlined),
      ),
      onFieldSubmitted: (_) {
        FocusScope.of(context).unfocus();
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      validator: (String? input) {
        input = input!.trim();
        if (input.isEmpty) return 'Enter your full name';
        if (!input.contains(' ')) return 'Enter atleast two names';
        if (input.substring(0, input.indexOf(' ')).length < 3)
          return 'Enter full name';
        if (input.length < 5) return 'Enter your full name';
        return null;
      },
    );
  }
}
