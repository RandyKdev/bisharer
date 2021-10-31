import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';

class SaveItem extends StatefulWidget {
  const SaveItem({Key? key}) : super(key: key);

  @override
  _SaveItemState createState() => _SaveItemState();
}

class _SaveItemState extends State<SaveItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/opportunity/2');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: ListTile(
          leading: Container(
            clipBehavior: Clip.hardEdge,
            child: Image.network(getRandomImage()),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: const Offset(0, 3.0),
                  blurRadius: 3.0,
                  spreadRadius: 0,
                ), //BoxShadow
              ],
            ),
          ),
          // isThreeLine: true,
          tileColor: Colors.white,
          title: Text(
            getTitle(),
            maxLines: 2,
            style: TextStyle(
              letterSpacing: 1.02,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            getRandomDate(),
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
