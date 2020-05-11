import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoTAssistant',
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: conStyle,
            child: Column(
              children: <Widget>[topBarButton, content],
            ),
          ),
        ),
      ),
    );
  }

  Widget get content => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          logo,
        ],
      );
  Widget get logo => Image.asset(
        'assets/img/logo.png',
        width: 250,
        fit: BoxFit.cover,
      );

  BoxDecoration conStyle = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/img/bg.png"),
      fit: BoxFit.cover,
    ),
  );
  Widget get infoButton => FlatButton(
      onPressed: null,
      child: Icon(
        Icons.info_outline,
        size: 35,
        color: Colors.white70,
      ));
  Widget get sideBarButton => FlatButton(
      onPressed: null,
      child: Icon(Icons.menu, size: 35, color: Colors.white70));

  Widget get topBarButton => Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[sideBarButton, infoButton],
        ),
      );


  Widget get loginInputUser => TextField(
      onChanged: (val) {},
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        labelText: "Mail Adresinizi Giriniz"
      ),
      );
      
      
}
