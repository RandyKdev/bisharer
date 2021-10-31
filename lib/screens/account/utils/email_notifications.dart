import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class EmailNotificaions extends StatefulWidget {
  const EmailNotificaions({Key? key}) : super(key: key);

  @override
  _EmailNotificaionsState createState() => _EmailNotificaionsState();
}

class _EmailNotificaionsState extends State<EmailNotificaions> {
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Wrap(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 10),
            width: double.infinity,
            child: Text(
              "Recieve email notifications",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Divider(indent: 25, endIndent: 25),
          RadioListTile(
            title: Text("Instantly"),
            value: 1,
            activeColor: primaryLight,
            groupValue: val,
            onChanged: (int? i) {
              setState(() {
                val = i!;
              });
            },
          ),
          RadioListTile(
            title: Text("During weekends"),
            value: 2,
            activeColor: primaryLight,
            groupValue: val,
            onChanged: (int? i) {
              setState(() {
                val = i!;
              });
            },
          ),
          RadioListTile(
            title: Text("Never"),
            value: 3,
            activeColor: primaryLight,
            groupValue: val,
            onChanged: (int? i) {
              setState(() => val = i!);
            },
          ),
          // Outline/
        ],
      ),
    );
  }
}
