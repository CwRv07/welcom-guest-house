import 'package:flutter/material.dart';
import 'functionButtonItem.dart';
import 'data.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: functionButtonItemDataList
          .map((item) => FunctionButtonItem(data: item))
          .toList(),
    );
  }
}
