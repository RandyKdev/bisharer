import 'package:flutter/material.dart';

class FloatContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? margin;
  FloatContainer({@required this.child, this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(0),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
        color: Colors.white,
      ),
      child: child,
    );
  }
}
