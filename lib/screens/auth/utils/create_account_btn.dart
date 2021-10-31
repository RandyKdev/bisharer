import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class CreateAccountBtn extends StatelessWidget {
  final Function()? onPressed;
  CreateAccountBtn({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'authCreateAccountBtn',
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            style: BorderStyle.solid,
            color: primaryTheme,
          ),
        ),
        height: 45,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size.infinite),
          ),
          child: Text(
            'Create Account',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
