import 'package:flutter/material.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/slide_head.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/normal_sec/utils/normal_item.dart';

class JobsTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideHead(title: 'Might Interest You', ref: 'might-interest-you'),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return NormalItem();
              },
              scrollDirection: Axis.horizontal,
              itemCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
