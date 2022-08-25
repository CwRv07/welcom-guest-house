import 'package:flutter/material.dart';
import 'package:welcome_guest_house/pages/home/tabIndex/indexRecommend/index.dart';
import 'package:welcome_guest_house/widgets/newsInfomation/index.dart';
import 'package:welcome_guest_house/widgets/searchBar/index.dart';
import 'indexNavigate/index.dart';
import 'package:welcome_guest_house/widgets/CommonSwiper.dart';

class TabIndexPage extends StatelessWidget {
  const TabIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: const [
        CommonSwiper(),
        SizedBox(
          height: 10.0,
        ),
        IndexNavigate(),
        SizedBox(
          height: 10.0,
        ),
        IndexRecommend(),
        NewsInfomation(showTitle: true,),
      ]),
    );
  }
}
