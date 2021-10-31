import 'package:flutter/material.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/interest_sec/utils/interest_item.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/slide_head.dart';

class InterestSec extends StatelessWidget {
  InterestSec(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          SlideHead(title: title),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: 100,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InterestItem();
                }),
          ),
        ],
      ),
    );
  }
}
