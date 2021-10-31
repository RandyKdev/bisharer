import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/generateInfo.dart';

class InterestItem extends StatelessWidget {
  InterestItem({
    this.title,
    this.pic,
  });
  final String? title;
  final String? pic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: Container(
        width: 120,
        margin: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 2,
              ),
              child: Text(
                getTitle(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: Text(
                getCompany(),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                  color: primaryLight,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
