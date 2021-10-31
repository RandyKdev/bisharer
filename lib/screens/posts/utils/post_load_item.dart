import 'package:flutter/material.dart';
import 'package:bisharer/utils/get_rand_num.dart';

class PostLoadItem extends StatelessWidget {
  const PostLoadItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 90,
            height: 90,
            color: Colors.white38,
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
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          color: Colors.white38,
                          height: 15,
                          width: double.infinity,
                        ),
                        SizedBox(height: 5),
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          color: Colors.white38,
                          height: 15,
                          width: getRandNum(50, 150),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: .5,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.white38,
                              height: 10,
                              width: getRandNum(30, 50),
                            ),
                            SizedBox(width: 13),
                            Container(
                              margin: EdgeInsets.only(right: 13),
                              color: Colors.white38,
                              height: 10,
                              width: getRandNum(30, 50),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white38,
                          height: 10,
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
    );
  }
}
