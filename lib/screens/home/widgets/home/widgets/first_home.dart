import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/home/widgets/home/widgets/text_carousel.dart';

class FirstHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppBar(
            centerTitle: true,
            title: Text(
              'Sharer',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextCarousel(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryTheme,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          tooltip: "Search",
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          enableFeedback: false,
                          icon: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/search',
                            );
                          },
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 10.0),
                        //   child: Text(
                        //     "Search",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 22,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
