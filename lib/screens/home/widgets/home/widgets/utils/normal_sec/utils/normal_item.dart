import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';

class NormalItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          margin: EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 3,
          ),
          child: Stack(
            children: [
              Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // bottom: 0,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black38.withOpacity(0.6),
                          Colors.black87.withOpacity(0.7),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      getTitle(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.05,
                        wordSpacing: 0,
                        letterSpacing: 0,
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
