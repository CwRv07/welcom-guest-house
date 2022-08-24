import 'package:flutter/material.dart';
import 'indexNavigateItem.dart';

List<IndexNavigateItem> defaultIndexNavigateList = [
  IndexNavigateItem('整租', Icons.house_outlined, (BuildContext contenxt) {
    print('整租');
  }),
  IndexNavigateItem('合租', Icons.people_alt, (BuildContext contenxt) {}),
  IndexNavigateItem('地图找房', Icons.approval, (BuildContext contenxt) {}),
  IndexNavigateItem(
      '去出租', Icons.add_home_work_outlined, (BuildContext contenxt) {})
];

class IndexNavigate extends StatelessWidget {
  const IndexNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: defaultIndexNavigateList
            .map((item) => Expanded(
                  child: InkWell(
                    onTap: () {
                      item.onTap!(context);
                    },
                    child: Column(children: [
                      Icon(
                        item.icon,
                        size: 40.0,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      )
                    ]),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
