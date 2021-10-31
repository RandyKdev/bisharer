import 'package:flutter/material.dart';
import 'package:bisharer/screens/drawer/drawer.dart';
import 'package:bisharer/screens/posts/utils/post_item.dart';
import 'package:bisharer/screens/posts/utils/post_load_item.dart';
import 'package:shimmer/shimmer.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then(
      (_) => setState(() => _loading = false),
    );
  }

  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text("Posts"),
        ),
        drawer: DrawerScreen(),
        body: _getScrollList(_loading, _screenHeight));
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
        itemBuilder: (_, __) => PostLoadItem(),
      ),
    );
  }
  return ListView.builder(
    physics: ClampingScrollPhysics(),
    itemCount: 100,
    itemBuilder: (BuildContext context, int index) {
      return PostItem();
    },
  );
}
