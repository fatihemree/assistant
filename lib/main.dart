import 'package:flutter/material.dart';
// import "package:assistant/logger.dart";
import 'package:assistant/screen/loginPage.dart';

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
            resizeToAvoidBottomInset: true,
            resizeToAvoidBottomPadding: false,
            body: LoginScreenPage()));
  }
}
