import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/home/widgets/utils/cat_item.dart';

class BlogHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: scaffoldBackgroundColor,
      ),
      child: ListView(
        key: PageStorageKey('blog'),
        children: buildScrollList(),
      ),
    );
  }
}

List<Widget> buildScrollList() {
  List<Widget> result = [];
  for (int i = 0; i < 100; i++) {
    if (i % 2 == 0)
      result.add(CatItem());
    else
      result.add(Divider(indent: 15, endIndent: 15));
  }
  return result;
}
