import 'package:flutter/material.dart';

AppBar headerHome({String? title, BuildContext? context}) => AppBar(
      centerTitle: true,
      elevation: 3,
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          tooltip: "Search",
          onPressed: () {
            Navigator.pushNamed(
              context!,
              '/search',
            );
          },
        ),
      ],
    );
