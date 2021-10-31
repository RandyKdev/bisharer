import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';

class InterestItem extends StatefulWidget {
  const InterestItem({Key? key}) : super(key: key);

  @override
  _InterestItemState createState() => _InterestItemState();
}

class _InterestItemState extends State<InterestItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: const Offset(0, 3.0),
                  blurRadius: 3.0,
                  spreadRadius: 0,
                ),
              ], borderRadius: BorderRadius.all(Radius.circular(10))),
              clipBehavior: Clip.hardEdge,
              width: 80,
              height: 100,
              child: Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            getRandomCat(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              size: 17,
                            ),
                            SizedBox(width: 5),
                            Text(
                              getRandomNumbers(),
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(width: 13),
                            Icon(
                              Icons.bookmark_added_outlined,
                              size: 17,
                            ),
                            SizedBox(width: 5),
                            Text(
                              getRandomNumbers(),
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      getTitle(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      getRandomDate() + ' - ' + getCompany(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
