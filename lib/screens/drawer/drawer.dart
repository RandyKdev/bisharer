import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../color.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildDrawerHeader(context),
            ListTile(
              title: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Column(
              children: [
                buildItem(
                  title: 'Scholarships',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/scholarships', (route) => false);
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Jobs',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/jobs', (route) => false);
                  },
                  icon: Icons.work_outline,
                ),
                buildItem(
                  title: 'Competitions',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/competitions', (route) => false);
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Events',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/events');
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Concours',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/concours');
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Grants',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/grants');
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Trainings',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/trainings');
                  },
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Blog',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/blog');
                  },
                  icon: Icons.school_outlined,
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                buildItem(
                  title: 'Account',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/account');
                  },
                  icon: Icons.account_box_outlined,
                ),
                buildItem(
                  title: 'Saves',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/saves');
                  },
                  icon: Icons.download_outlined,
                ),
                buildItem(
                  title: 'Interests',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/interests');
                  },
                  icon: Icons.bookmark_outlined,
                ),
                buildItem(
                  title: 'Posts',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/posts');
                  },
                  icon: Icons.upload_outlined,
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                buildItem(
                  title: 'Contact Us',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/contact-us');
                  },
                  icon: Icons.email_outlined,
                ),
                buildItem(
                  title: 'About Us',
                  onPress: () {
                    Navigator.of(context).pop();
                    Navigator.popUntil(
                        context, (route) => (route.isCurrent && route.isFirst));
                    Navigator.of(context).pushNamed('/about-us');
                  },
                  icon: Icons.info_outline,
                ),
                buildItem(
                  title: 'Rate App',
                  onPress: () {},
                  icon: Icons.info_outline,
                ),
                buildItem(
                  title: 'Terms Of Service',
                  icon: Icons.school_outlined,
                ),
                buildItem(
                  title: 'Privacy Policy',
                  icon: Icons.school_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return DrawerHeader(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.popUntil(
              context, (route) => (route.isCurrent && route.isFirst));
          Navigator.of(context).pushNamed('/account');
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://unsplash.it/550'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text(
                    'Randy',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Kwalar',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem({String? title, IconData? icon, void Function()? onPress}) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: primaryTheme,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        padding: EdgeInsets.all(5),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(title!),
      onTap: onPress,
    );
  }
}
