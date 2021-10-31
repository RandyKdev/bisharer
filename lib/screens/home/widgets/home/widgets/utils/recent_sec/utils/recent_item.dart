import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';

class RecentItem extends StatelessWidget {
  final EdgeInsets margin = EdgeInsets.all(8);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: Container(
        width: (screenWidth / 2) - 16,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(1, 1),
              spreadRadius: 1,
            ),
          ],
        ),
        margin: margin,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getTitle(),
                    style: TextStyle(
                      fontSize: 14,
                      // height: 1.1,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      getCompany(),
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
