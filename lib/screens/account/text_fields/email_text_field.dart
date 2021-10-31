import 'package:flutter/material.dart';
import 'package:bisharer/screens/account/utils/form_props.dart';

class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email_outlined),
      ),
      onFieldSubmitted: (_) {
        FocusScope.of(context).unfocus();
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.emailAddress,
      validator: (String? input) {
        input = input!.trim();
        if (input.isEmpty) return 'Enter email';
        RegExp exp = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
        if (!exp.hasMatch(input)) return "Enter a valid email";
        return null;
      },
    );
  }
}
