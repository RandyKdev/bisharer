import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class TextCarousel extends StatelessWidget {
  final List<String> items = [
    'Uphold the good works of humanity and to serve the nation with all',
    'To unite the people in one peace, one faith and one baptism, AMEN',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text(
            'Our Vision',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: 270,
          child: NotificationListener(
            onNotification: (ScrollNotification not) {
              return true;
            },
            child: IgnorePointer(
              child: CarouselSlider(
                items: items.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                  height: 50,
                  autoPlayAnimationDuration: Duration(milliseconds: 400),
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
