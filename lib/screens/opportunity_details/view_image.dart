import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';

class ViewImage extends StatelessWidget {
  final String? image;
  ViewImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white54,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          panEnabled: false,
          child: Hero(
            child: Image.network(
              getRandomImage(),
              fit: BoxFit.contain,
            ),
            tag: 'opportunity uid',
          ),
        ),
      ),
    );
  }
}
