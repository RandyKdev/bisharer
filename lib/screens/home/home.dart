import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/enum/cats.dart';
import 'package:bisharer/screens/cat_temp/cat_temp_screen.dart';
import 'package:bisharer/screens/drawer/drawer.dart';
import 'package:bisharer/screens/home/utils/header_home.dart';
import 'package:bisharer/screens/home/widgets/blog/blog_home_widget.dart';
import 'package:bisharer/screens/home/widgets/home/home_main_widget.dart';

class Home extends StatefulWidget {
  final int index;
  Home({this.index = 0});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _bottomAppBar = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      tooltip: 'Home',
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school_outlined),
      tooltip: 'Scholarships',
      label: 'Scholarships',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work_outline),
      tooltip: 'Jobs',
      label: 'Jobs',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.comment_outlined),
      tooltip: 'Competitions',
      label: 'Competitions',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.new_releases_outlined),
      tooltip: 'Blog',
      label: 'Blog',
    ),
  ];
  final _pages = [
    HomeMainWidget(),
    CatsTempScreen(CatsEnum.SCHOLARSHIPS, key: Key('scholarships')),
    CatsTempScreen(CatsEnum.JOBS, key: Key('jobs')),
    CatsTempScreen(CatsEnum.COMPETITIONS, key: Key('competitions')),
    BlogHomeWidget(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  int? _currentIndex;

  final _mainComp = [
    "Home",
    "Scholarships",
    "Jobs",
    "Competitions",
    "Blog",
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = 0;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: _currentIndex != 0
            ? headerHome(
                title: _mainComp[_currentIndex!],
                context: context,
              )
            : null,
        drawer: DrawerScreen(),
        body: _pages[_currentIndex!],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          backgroundColor: scaffoldBackgroundColor,
          selectedItemColor: primaryTheme,
          currentIndex: _currentIndex!,
          onTap: onTap,
          selectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          items: _bottomAppBar,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
