import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/generateInfo.dart';

class PostItem extends StatefulWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 10,
                  bottom: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getTitle(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        height: 1.3,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: .5,
                          child: Row(
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
                        ),
                        Expanded(
                          child: Text(
                            getCompany(),
                            style: TextStyle(
                              fontSize: 12.5,
                              color: primaryLight,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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
