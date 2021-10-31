import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Hero(
        tag: 'authAppIcon',
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://unsplash.it/550'),
        ),
      ),
    );
  }
}
