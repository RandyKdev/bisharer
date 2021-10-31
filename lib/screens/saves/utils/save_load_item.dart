import 'package:flutter/material.dart';
import 'package:bisharer/utils/get_rand_num.dart';

class SaveLoadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: ListTile(
        leading: Container(
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white38,
              height: 15,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white38,
              height: 15,
              width: getRandNum(50, 150),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white38,
              height: 10,
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
