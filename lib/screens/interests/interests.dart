import 'package:flutter/material.dart';
import 'package:bisharer/screens/drawer/drawer.dart';
import 'package:bisharer/screens/interests/utils/interest_item.dart';
import 'package:bisharer/screens/interests/utils/interest_load_item.dart';
import 'package:shimmer/shimmer.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  _InterestsScreenState createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
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

    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: DrawerScreen(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Interests"),
      ),
      body: _getScrollList(_loading, screenHeight),
    );
  }
}

Widget _getScrollList(bool loading, double screenHeight) {
  if (loading) {
    return Shimmer.fromColors(
      direction: ShimmerDirection.ttb,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: screenHeight ~/ 80,
        itemBuilder: (_, __) => InterestLoadItem(),
      ),
    );
  }
  return ListView.builder(
    physics: ClampingScrollPhysics(),
    itemCount: 100,
    itemBuilder: (BuildContext context, int index) {
      return InterestItem();
    },
  );
}
