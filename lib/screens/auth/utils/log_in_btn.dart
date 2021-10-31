import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class LogInBtn extends StatelessWidget {
  final Function()? onPressed;
  LogInBtn({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'authLogInBtn',
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        height: 45,
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size.infinite),
            backgroundColor: MaterialStateProperty.all(primaryTheme),
          ),
          onPressed: onPressed,
          child: Text(
            'Log In',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
