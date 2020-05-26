import 'package:flutter/material.dart';
import "package:assistant/logger.dart";
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
            resizeToAvoidBottomPadding: false,
            body: Stack(
              children: [
                Container(
                  decoration: conStyle,
                ),
                Expanded(child: LoginScreenPage())
              ],
            )));
  }
}

BoxDecoration conStyle = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/img/bg.png"),
    fit: BoxFit.cover,
  ),
);