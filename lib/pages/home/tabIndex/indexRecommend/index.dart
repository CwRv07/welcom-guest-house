import 'package:flutter/material.dart';
import 'incexRecommentItem.dart';

const List<IndexRecommendItem> defaultIndexCommendList = [
  IndexRecommendItem(
      '家住回龙观', '归属的感觉', 'static/images/home_index_recommend_1.png', 'login'),
  IndexRecommendItem(
      '宜居四五环', '大都市生活', 'static/images/home_index_recommend_2.png', 'login'),
  IndexRecommendItem(
      '喧嚣三里屯', '繁华的背后', 'static/images/home_index_recommend_3.png', 'login'),
  IndexRecommendItem(
      '比邻十号线', '地铁心连心', 'static/images/home_index_recommend_4.png', 'login'),
];

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> indexCommendList;

  const IndexRecommend(
      {Key? key, this.indexCommendList = defaultIndexCommendList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x08000000)),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '房屋推荐',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '更多',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                    ),
                  ))
            ],
          ),
          // SizedBox(
          //   height: 10.0,
          // ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: indexCommendList
                .map((item) => Container(
                      width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
                      decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(5),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [Text(item.title),SizedBox(height: 5.0,), Text(item.subTitle)],
                          ),
                          Image.asset(
                            item.imageUrl,
                            width: 80.0,
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
