import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  final EdgeInsets? margin;
  AuthFooter({this.margin});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: margin ?? EdgeInsets.all(0),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 0.7,
                endIndent: 20,
              )),
              Text(
                "Or continue with",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 0.7,
                indent: 20,
              )),
            ],
          ),
        ),
        Container(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(context, (route) => false);
                  Navigator.of(context).pushNamed('/home');
                },
                child: Image.asset(
                  'images/facebook.jpg',
                  height: 40,
                  width: 50,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(context, (route) => false);
                  Navigator.of(context).pushNamed('/home');
                },
                child: Image.asset('images/google.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
