import 'package:flutter/material.dart';
import 'package:bisharer/screens/auth/formProps.dart';

class EmailTextField extends StatelessWidget {
  final bool isForgotPassword;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  EmailTextField({
    this.isForgotPassword = false,
    this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ?? emailController,
      focusNode: focusNode ?? emailFocusNode,
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email_outlined),
      ),
      onFieldSubmitted: (_) {
        if (isForgotPassword)
          FocusScope.of(context).unfocus();
        else
          FocusScope.of(context).requestFocus(passwordFocusNode);
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
