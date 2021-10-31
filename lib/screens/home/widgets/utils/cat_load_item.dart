import 'package:flutter/material.dart';
import 'package:bisharer/utils/get_rand_num.dart';

class CatLoadItem extends StatelessWidget {
  const CatLoadItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                top: 5,
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
                        width: double.infinity,
                        height: 15,
                        color: Colors.white38,
                      ),
                      Container(
                        width: getRandNum(
                            80, MediaQuery.of(context).size.height - 200),
                        height: 15,
                        color: Colors.white38,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: .5,
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 40,
                              color: Colors.white38,
                            ),
                            SizedBox(width: 13),
                            Container(
                              height: 15,
                              width: 40,
                              color: Colors.white38,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: getRandNum(10, 40)),
                          height: 15,
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.white38,
            ),
          )
        ],
      ),
    );
  }
}
