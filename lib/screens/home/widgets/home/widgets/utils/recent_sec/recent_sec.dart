import 'package:flutter/material.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/recent_sec/utils/recent_item.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/utils/slide_head.dart';

class RecentTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideHead(title: 'Recent Opportunities', ref: 'recent-opportunities'),
          Column(
            children: [
              Row(
                children: [
                  RecentItem(),
                  RecentItem(),
                ],
              ),
              Row(
                children: [
                  RecentItem(),
                  RecentItem(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
