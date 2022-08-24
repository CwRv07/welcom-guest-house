import 'package:flutter/material.dart';
class IndexNavigateItem {
  final String title;
  final IconData  icon;
  final Function(BuildContext contenxt)? onTap;

  const IndexNavigateItem(this.title, this.icon, this.onTap);
}

