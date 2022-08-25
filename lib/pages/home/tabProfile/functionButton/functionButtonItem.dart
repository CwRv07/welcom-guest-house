import 'package:flutter/material.dart';
import 'package:welcome_guest_house/pages/home/tabProfile/functionButton/index.dart';

class FunctionButtonItemData {
  final String title;
  final String imageUrl;
  final String navigateUrl;

  const FunctionButtonItemData(this.imageUrl, this.title, this.navigateUrl);
}

class FunctionButtonItem extends StatelessWidget {
  final FunctionButtonItemData data;

  const FunctionButtonItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(top: 30.0),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          children: [
            Image.asset(
              data.imageUrl,
              height: 50.0,
              fit: BoxFit.contain,
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Text(data.title,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
