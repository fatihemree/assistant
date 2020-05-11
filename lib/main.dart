import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoTAssistant',
      home: Scaffold(
        appBar: AppBar(
          title: Text('WoT Assistant'),
        ),
        body: Center(
          child: Container(
            child: Row(
             // verticalDirection: VerticalDirection.down,
              children: <Widget>[
                logo,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get logo => Image.asset(
        'assets/img/logo.png',
        width: 300,
      );
}
