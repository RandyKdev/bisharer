import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class AuthBckTemp extends StatelessWidget {
  final Widget? child;
  AuthBckTemp({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: primaryTheme,
            ),
            height: MediaQuery.of(context).size.height / 2,
          ),
          child!,
        ],
      ),
    );
  }
}
