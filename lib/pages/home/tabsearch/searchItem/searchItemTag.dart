import 'package:flutter/material.dart';

class TabSearchItemTagData {
  final String title;
  final Color color;
  final Color backgroundColor;
  TabSearchItemTagData.origin(this.title,
      {Key? key,
      this.color = Colors.white,
      this.backgroundColor = Colors.black26});

  factory TabSearchItemTagData(String title) {
    switch (title) {
      case '近地铁':
        return TabSearchItemTagData.origin(title,
            color: Colors.red, backgroundColor: Colors.red[50]!);
      case '集中供暖':
        return TabSearchItemTagData.origin(title,
            color: Colors.pink, backgroundColor: Colors.pink[50]!);
      case '新上':
        return TabSearchItemTagData.origin(title,
            color: Colors.green, backgroundColor: Colors.green[50]!);
      case '随时看房':
        return TabSearchItemTagData.origin(title,
            color: Colors.blue, backgroundColor: Colors.blue[50]!);
      default:
        return TabSearchItemTagData.origin(title);
    }
  }
}

class TabSearchItemTag extends StatelessWidget {
  final TabSearchItemTagData data;
  const TabSearchItemTag({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.0),
      padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
      decoration: BoxDecoration(
          color: data.backgroundColor,
          borderRadius: BorderRadius.circular(5.0)),
      child: Text(
        data.title,
        style: TextStyle(fontSize: 12.0, color: data.color),
      ),
    );
  }
}
