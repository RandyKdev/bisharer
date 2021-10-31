import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class SlideHead extends StatelessWidget {
  SlideHead({this.title, this.ref});
  final String? title, ref;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: primaryLight,
            ),
          ],
        ),
      ),
      onTap: () {
        if (ref == null)
          Navigator.of(context).pushNamed('/' + title!);
        else
          Navigator.of(context).pushNamed('/' + ref!);
      },
    );
  }
}
