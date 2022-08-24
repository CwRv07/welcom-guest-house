import 'package:flutter/material.dart';
import 'package:welcome_guest_house/widgets/newsInfomation/index.dart';

class TabInfoPage extends StatefulWidget {
  const TabInfoPage({Key? key}) : super(key: key);

  @override
  State<TabInfoPage> createState() => _TabInfoPageState();
}

class _TabInfoPageState extends State<TabInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('资讯'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              NewsInfomation(
                showTitle: false,
              ),
              NewsInfomation(
                showTitle: false,
              ),
            ],
          ),
        ));
  }
}
