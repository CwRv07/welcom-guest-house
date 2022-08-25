import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final bool showLocation;
  final Function? goBackCallback;
  final String inputValue;
  final Function? onCancel;
  final bool showMap;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {Key? key,
      this.showLocation = true,
      this.goBackCallback,
      this.inputValue = "搜索内容···",
      this.onCancel,
      this.showMap = false,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        /* 定位 */
        if (widget.showLocation)
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Icon(
                  Icons.room,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "北京",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        /* 搜索框 */
        Expanded(
          child: Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18)),
            margin: EdgeInsets.only(left: 10,right: 10.0),
            child: TextField(
              textInputAction: TextInputAction.search,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: -4),
                hintText: '请输入搜索词',
                hintStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.clear,
                    size: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
