import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/account/utils/edit_profile_details.dart';
import 'package:bisharer/screens/account/utils/email_notifications.dart';
import 'package:bisharer/screens/account/utils/push_notifications.dart';
import 'package:bisharer/screens/drawer/drawer.dart';

// todo: finish with account screen

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: true,
            expandedHeight: 300,
            centerTitle: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(
                    'https://unsplash.it/550',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black38.withOpacity(0.3),
                        Colors.transparent,
                        Colors.black87.withOpacity(0.35),
                      ],
                    ),
                  ),
                ),
              ]),
              title: Text(
                'Randy Kwalar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: false,
              titlePadding: EdgeInsets.only(
                left: 30,
                bottom: 15,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  _showEditProfileDetails(context);
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  title: Text('Edit Profile Details'),
                  leading: Icon(
                    Icons.edit,
                    color: primaryLight,
                  ),
                  onTap: () {
                    _showEditProfileDetails(context);
                  },
                ),
                Divider(),
                ListTile(title: Text("Notifications")),
                ListTile(
                  title: Text("Email Notifications"),
                  leading: Icon(
                    Icons.notifications,
                    color: primaryLight,
                  ),
                  onTap: () => _showEmailNotificationOpts(context),
                ),
                PushNotifications(),
                Divider(),
                _logoutBtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _logoutBtn() {
    return ListTile(
      title: Text('Logout'),
      leading: Icon(
        Icons.exit_to_app_outlined,
        color: failureColor,
      ),
      onTap: () {},
    );
  }

  void _showEmailNotificationOpts(BuildContext ctx) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: ctx,
      builder: (BuildContext ctx) {
        return EmailNotificaions();
      },
    );
  }

  void _showEditProfileDetails(BuildContext ctx) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: ctx,
      builder: (BuildContext ctx) {
        return EditProfileDetails();
      },
    );
  }
}
