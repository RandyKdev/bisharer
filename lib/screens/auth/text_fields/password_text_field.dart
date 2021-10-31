import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bisharer/screens/auth/formProps.dart';

class PasswordTextField extends StatefulWidget {
  final bool isLogIn;
  PasswordTextField({this.isLogIn = true});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      focusNode: passwordFocusNode,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          icon: Icon(_isVisible
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
        ),
      ),
      onFieldSubmitted: (_) {
        FocusScope.of(context).unfocus();
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_isVisible,
      validator: (String? input) {
        input = input!.trim();
        if (input.isEmpty) return 'Enter password';
        if (widget.isLogIn) return null;
        if (input.length < 8)
          return "Password is too short, has to be atleast 8 characters";
        if (!containsDigits(input))
          return 'Password must contain atleast one digit (number)';
        if (!containsLowercase(input))
          return 'Password must contain atleast one lowercase letter';
        if (!containsUppercase(input))
          return 'Password must contain atleast one uppercase letter';
        return null;
      },
    );
  }

  containsDigits(String password) {
    bool found = false;
    for (int i = 0; i < 10; i++) {
      if (password.contains(i.toString())) {
        found = true;
        break;
      }
    }
    return found;
  }

  bool containsUppercase(String password) {
    bool found = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i] == password[i].toUpperCase()) {
        found = true;
        break;
      }
    }
    return found;
  }

  bool containsLowercase(String password) {
    bool found = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i] == password[i].toLowerCase()) {
        found = true;
        break;
      }
    }
    return found;
  }
}
