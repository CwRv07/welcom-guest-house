import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:welcome_guest_house/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      title: '好客租房',
      theme: ThemeData(primaryColor: Colors.lightBlue),
      onGenerateRoute: router.generator,
      initialRoute: "/loading",
    );
  }
}
