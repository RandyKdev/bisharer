import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/generateInfo.dart';
import 'package:bisharer/screens/drawer/drawer.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        elevation: 1,
        title: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: primaryLight,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel_outlined),
            onPressed: () {},
            color: primaryLight,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _buildSearchElem(context);
        },
      ),
    );
  }
}

Widget _buildSearchElem(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.of(context).pushNamed('/opportunity/2');
    },
    child: Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                offset: const Offset(0, 3.0),
                blurRadius: 3.0,
                spreadRadius: 0,
              ), //BoxShadow
            ], borderRadius: BorderRadius.all(Radius.circular(10))),
            clipBehavior: Clip.hardEdge,
            width: 60,
            height: 70,
            child: Image.network(
              getRandomImage(),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    getTitle(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Opacity(
                    opacity: .5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            getRandomDate(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              size: 17,
                            ),
                            SizedBox(width: 5),
                            Text(
                              getRandomNumbers(),
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(width: 13),
                            Icon(
                              Icons.bookmark_added_outlined,
                              size: 17,
                            ),
                            SizedBox(width: 5),
                            Text(
                              getRandomNumbers(),
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildSearchHistoryElem() {
  return ListTile(
    onTap: () {},
    leading: IconButton(
      icon: Icon(Icons.history_outlined),
      onPressed: () {},
    ),
    title: Text('Opportunities by $getCompany()'),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(Icons.more_vert_outlined),
    ),
  );
}
