import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/enum/cats.dart';
import 'package:bisharer/screens/account/account.dart';
import 'package:bisharer/screens/auth/auth.dart';
import 'package:bisharer/screens/auth/create_account.dart';
import 'package:bisharer/screens/auth/login.dart';
import 'package:bisharer/screens/cat_temp/cat_temp_screen.dart';
import 'package:bisharer/screens/home/home.dart';
import 'package:bisharer/screens/interests/interests.dart';
import 'package:bisharer/screens/opportunity_details/opportunity_details.dart';
import 'package:bisharer/screens/posts/posts.dart';
import 'package:bisharer/screens/saves/saves.dart';
import 'package:bisharer/screens/search/search.dart';

void main() {
  runApp(Sharer());
}

class Sharer extends StatelessWidget {
  final themeData = ThemeData(
    primaryColor: primaryTheme,
    accentColor: accentColor,
    accentColorBrightness: Brightness.light,
    backgroundColor: scaffoldBackgroundColor,
    brightness: Brightness.light,
    errorColor: errorColor,
    dividerColor: Colors.grey,
    focusColor: primaryTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: scaffoldBackgroundColor,
      shadowColor: shadowColor,
      elevation: 0,
      foregroundColor: scaffoldBackgroundColor,
    ),
    highlightColor: primaryLight,
    hoverColor: primaryLight,
    platform: TargetPlatform.android,
    primaryColorBrightness: Brightness.light,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    shadowColor: shadowColor,
    splashColor: primaryLight,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
      theme: themeData,
      onGenerateRoute: (settings) => _generateRoutes(settings, context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/auth',

      // home: Home(), //AuthScreen(), //Home(),
    );
  }

  MaterialPageRoute _generateRoutes(RouteSettings settings, context) {
    // todo: Today: link pages together and make them dynamic. it will be a long day
    // todo: find appropriate icons
    // todo: find appropriate fonts
    // todo: make search functional
    // todo: setup firebase account
    // todo: write firebase functions
    // todo: finish by the 20 of november
    if (settings.name == '/auth')
      return MaterialPageRoute(builder: (context) => AuthScreen());

    if (settings.name == '/home')
      return MaterialPageRoute(builder: (context) => Home());

    if (settings.name == '/account')
      return MaterialPageRoute(builder: (context) => AccountScreen());

    if (settings.name == '/auth')
      return MaterialPageRoute(builder: (context) => AuthScreen());

    if (settings.name == '/search')
      return MaterialPageRoute(builder: (context) => SearchScreen());
    // Handle '/details/:id'
    Uri uri = Uri.parse(settings.name!);
    if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == 'opportunity') {
      var id = uri.pathSegments[1];
      return MaterialPageRoute(builder: (context) => OpportunityDetails());
    }
    if (settings.name == '/scholarships')
      return MaterialPageRoute(builder: (context) => Home(index: 1));

    if (settings.name == '/jobs')
      return MaterialPageRoute(builder: (context) => Home(index: 2));

    if (settings.name == '/competitions')
      return MaterialPageRoute(builder: (context) => Home(index: 3));

    if (settings.name == '/blog')
      return MaterialPageRoute(builder: (context) => Home(index: 4));

    if (settings.name == '/trainings')
      return MaterialPageRoute(
          builder: (context) =>
              CatsTempScreen(CatsEnum.TRAININGS, key: Key('trainings')));

    if (settings.name == '/events')
      return MaterialPageRoute(
          builder: (context) => CatsTempScreen(
                CatsEnum.EVENTS,
                key: Key('events'),
              ));

    if (settings.name == '/concours')
      return MaterialPageRoute(
          builder: (context) =>
              CatsTempScreen(CatsEnum.CONCOURS, key: Key('concours')));

    if (settings.name == '/grants')
      return MaterialPageRoute(
          builder: (context) =>
              CatsTempScreen(CatsEnum.GRANTS, key: Key('grants')));

    if (settings.name == '/might-interest-you')
      return MaterialPageRoute(
          builder: (context) =>
              CatsTempScreen(CatsEnum.INTEREST, key: Key("interest")));

    if (settings.name == '/recent-opportunities')
      return MaterialPageRoute(
          builder: (context) =>
              CatsTempScreen(CatsEnum.RECENT, key: Key("recent")));

    if (settings.name == '/saves')
      return MaterialPageRoute(builder: (context) => Saves());

    if (settings.name == '/interests')
      return MaterialPageRoute(builder: (context) => InterestsScreen());

    if (settings.name == '/posts')
      return MaterialPageRoute(builder: (context) => PostsScreen());

    print('hey');
    return MaterialPageRoute(builder: (context) => Home());
  }
}
