import 'package:flutter/material.dart';
import 'searchItemTag.dart';

class SearchItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final List<String> tags;
  final int price;
  const SearchItemData(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.imageUrl,
      required this.tags,
      required this.price});
}

class TabSearchItem extends StatelessWidget {
  final SearchItemData data;
  const TabSearchItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Container(
            width: 132.5,
            height: 90.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              data.imageUrl,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
                ),
                Text(data.subTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.black54)),
                Wrap(
                  children: data.tags
                      .map((item) => TabSearchItemTag(data: TabSearchItemTagData(item)))
                      .toList(),
                ),
                Text(
                  '${data.price} 元/月 ',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
