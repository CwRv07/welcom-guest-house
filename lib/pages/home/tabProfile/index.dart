import 'package:flutter/material.dart';
import 'package:welcome_guest_house/pages/home/tabProfile/advertisement/index.dart';
import 'package:welcome_guest_house/pages/home/tabProfile/functionButton/index.dart';
import 'package:welcome_guest_house/pages/home/tabProfile/userTile/index.dart';
import 'package:welcome_guest_house/widgets/newsInfomation/index.dart';

class TabProfilePage extends StatelessWidget {
  const TabProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("我的"),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          actions: const [
            Icon(Icons.settings),
            Padding(padding: EdgeInsets.only(right: 20.0))
          ]),
      body: ListView(children: [
        UserTile(),
        FunctionButton(),
        Advertisement(),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        NewsInfomation()
      ]),
    );
  }
}
