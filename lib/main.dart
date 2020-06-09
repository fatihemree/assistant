import 'package:flutter/material.dart';
// import "package:assistant/logger.dart";
import 'package:assistant/screen/loginPage.dart';
import 'package:assistant/screen/drawerMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WoTAssistant',
        home: Scaffold(
          drawer: DrawerMenu(),
            resizeToAvoidBottomInset: true,
            resizeToAvoidBottomPadding: false,
            body: LoginScreenPage()));
  }
}
