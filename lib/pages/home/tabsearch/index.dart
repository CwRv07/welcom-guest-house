import 'package:flutter/material.dart';
import 'package:welcome_guest_house/pages/home/tabsearch/searchItem.dart';
import 'data.dart';

class TabSearchPage extends StatelessWidget {
  const TabSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('搜索'),
          centerTitle: true,
        ),
        body: Column(children: [
          Container(
            height: 90.0,
            color: Colors.red,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 10.0),
              children: searchDataList
                  .map((item) => TabSearchItem(data: item))
                  .toList(),
            ),
          )
        ]));
  }
}
