import 'package:flutter/material.dart';
import 'package:welcome_guest_house/widgets/PageContent.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;

  const RoomDetailPage({Key? key, required this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContent(name: '详情页$roomId');
  }
}
