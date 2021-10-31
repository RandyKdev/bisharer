import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';
import 'package:bisharer/utils/get_rand_num.dart';

class InterestLoadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white38,
            ),
            margin: EdgeInsets.only(right: 15),
            width: 80,
            height: 120,
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
                      Container(
                        color: Colors.white38,
                        width: getRandNum(10, 50),
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.white38,
                            width: getRandNum(10, 30),
                            height: 10,
                          ),
                          SizedBox(width: 13),
                          Container(
                            color: Colors.white38,
                            width: getRandNum(10, 30),
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white38,
                    width: double.infinity,
                    height: 15,
                  ),
                  Container(
                    color: Colors.white38,
                    width: getRandNum(50, 100),
                    height: 15,
                  ),
                  Container(
                    color: Colors.white38,
                    width: getRandNum(50, 100),
                    height: 10,
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
