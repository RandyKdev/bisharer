import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/enum/cats.dart';
import 'package:bisharer/screens/drawer/drawer.dart';
import 'package:bisharer/screens/home/widgets/utils/cat_item.dart';
import 'package:bisharer/screens/home/widgets/utils/cat_load_item.dart';
import 'package:bisharer/utils/cap_first_letter.dart';
import 'package:bisharer/utils/get_enum_val.dart';
import 'package:bisharer/utils/is_cat_in_home.dart';
import 'package:shimmer/shimmer.dart';

class CatsTempScreen extends StatefulWidget {
  final CatsEnum cat;
  CatsTempScreen(this.cat, {Key? key}) : super(key: key);

  @override
  _CatsTempScreenState createState() => _CatsTempScreenState();
}

class _CatsTempScreenState extends State<CatsTempScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((_) {
      setState(() {
        _loading = false;
      });
    });
  }

  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    if (isCatInHome(widget.cat)) {
      return Container(
        decoration: BoxDecoration(
          color: scaffoldBackgroundColor,
        ),
        child: _getScrollList(widget.cat, _loading, screenHeight),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerScreen(),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(capFirstLetter(getEnumVal(widget.cat))),
        ),
        body: _getScrollList(widget.cat, _loading, screenHeight),
      );
    }
  }
}

Widget _getScrollList(CatsEnum cat, bool loading, double screenHeight) {
  if (loading) {
    return Shimmer.fromColors(
      direction: ShimmerDirection.ttb,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: loading,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) {
          return Divider(indent: 15, endIndent: 15);
        },
        itemCount: screenHeight ~/ 120,
        itemBuilder: (_, __) => CatLoadItem(),
      ),
    );
  }
  return ListView.separated(
    physics: ClampingScrollPhysics(),
    key: PageStorageKey(getEnumVal(cat)),
    separatorBuilder: (_, __) {
      return Divider(indent: 15, endIndent: 15);
    },
    itemCount: 100,
    itemBuilder: (BuildContext context, int index) {
      return CatItem();
    },
  );
}
