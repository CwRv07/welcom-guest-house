import 'package:flutter/material.dart';
import 'package:welcome_guest_house/pages/home/tabIndex/index.dart';
import 'package:welcome_guest_house/pages/home/tabInfo/index.dart';
import 'package:welcome_guest_house/pages/home/tabsearch/index.dart';
import 'package:welcome_guest_house/widgets/PageContent.dart';

/* 页面 */
List<Widget> tabViewList = [
  TabIndexPage(),
  TabSearchPage(),
  TabInfoPage(),
  PageContent(name: '我的')
];

/* BottomNavigationBarItem */
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索'),
  BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: '资讯'),
  BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined), label: '我的'),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabViewList[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: barItemList,
        type: BottomNavigationBarType.fixed,
        
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.lightBlue,
        
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
