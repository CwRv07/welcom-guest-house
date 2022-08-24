import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:welcome_guest_house/pages/home/index.dart';
import 'package:welcome_guest_house/pages/notFound/index.dart';
import 'package:welcome_guest_house/pages/register/index.dart';
import 'package:welcome_guest_house/pages/roomDetail/index.dart';
import 'package:welcome_guest_house/pages/login/index.dart';

class Routes {
  /* root */
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String roomDetail = '/detail/:roomId';

  /* rootHandler */
  static var notFoundHandler = Handler(
      handlerFunc: (BuildContext? content, Map<String, List<String>> params) {
    return const NotFound();
  });
  static var homeHandler = Handler(
      handlerFunc: (BuildContext? content, Map<String, List<String>> params) {
    return const HomePage();
  });
  static var loginHandler = Handler(
      handlerFunc: (BuildContext? content, Map<String, List<String>> params) {
    return const LoginPage();
  });
  static var registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RegisterPage();
  });
  static var roomDetailHandler = Handler(
      handlerFunc: (BuildContext? content, Map<String, List<String>> params) {
    return RoomDetailPage(roomId: params['roomId']![0]);
  });

  /* configureRoutes */
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notFoundHandler;
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(register, handler: registerHandler);
    router.define(roomDetail, handler: roomDetailHandler);
  }
}
