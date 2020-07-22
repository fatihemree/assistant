import 'package:flutter/material.dart';
// import "package:assistant/logger.dart";
import 'package:assistant/screen/loginPage.dart';
import 'package:assistant/screen/home.dart';
// import 'package:assistant/screen/drawerMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoTAssistant',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => LoginScreenPage(),
      },
    );
  }
}
