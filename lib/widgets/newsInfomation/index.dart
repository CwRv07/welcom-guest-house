import 'package:flutter/material.dart';
import 'package:welcome_guest_house/widgets/newsInfomation/data.dart';
import 'package:welcome_guest_house/widgets/newsInfomation/newsInfomationItem.dart';

class NewsInfomation extends StatelessWidget {
  final bool showTitle;

  const NewsInfomation({Key? key, this.showTitle = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        /* 标题栏 */
        if (showTitle)
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '最新资讯',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        /* 资讯栏 */
        Column(
          children:
              infoData.map((item) => NewsInfomationItem(data: item)).toList(),
        )
      ]),
    );
  }
}
