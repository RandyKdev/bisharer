import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';

class PushNotifications extends StatefulWidget {
  final bool? switchedOn;
  const PushNotifications({this.switchedOn});

  @override
  _PushNotificationsState createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: EdgeInsets.only(left: 0),
      value: true,
      onChanged: (bool switched) {},
      activeColor: primaryLight,
      title: ListTile(
        leading: Icon(
          Icons.notifications_active_outlined,
          color: primaryLight,
        ),
        title: Text('Push notifications'),
      ),
    );
  }
}
