import 'package:flutter/material.dart';
import 'data.dart';

class NewsInfomationItemData {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigateUrl;

  const NewsInfomationItemData(
      {required this.title,
      required this.imageUrl,
      required this.source,
      required this.time,
      required this.navigateUrl});
}

class NewsInfomationItem extends StatelessWidget {
  final NewsInfomationItemData data;
  const NewsInfomationItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              data.imageUrl,
              width: 120.0,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.title),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.source,
                    style: TextStyle(color: Colors.black54, fontSize: 13.0),
                  ),
                  Text(
                    data.time,
                    style: TextStyle(color: Colors.black54, fontSize: 13.0),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
