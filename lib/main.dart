import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoTAssistant',
      home: Scaffold(
        resizeToAvoidBottomPadding: true,
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

  Widget get content => Padding(
    padding: const EdgeInsets.only(bottom: 35),
    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[logo, form],
        ),
  );
  Widget get logo => Center(
        child: Image.asset(
          'assets/img/logo.png',
          width: 250,
          fit: BoxFit.cover,
        ),
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

  Widget get form => Center(
        child: Container(
          width: 300,
          decoration: formStyle,
          child: Column(
            children: <Widget>[loginInputUser, passwordInputUser],
          ),
        ),
      );

  BoxDecoration formStyle = BoxDecoration();

  Widget get loginInputUser => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (val) {},
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              height: 1,
              color: Colors.white),
          decoration: InputDecoration(
              hintText: "WarGamin.net ID'niz",
              hintStyle: TextStyle(color: Colors.white),
              labelText: "Mail Adresinizi Giriniz",
              fillColor: Color(0xFF37372D),
              filled: true),
        ),
      );

  Widget get passwordInputUser => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: true,
          onChanged: (val) {},
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              height: 1,
              color: Colors.white),
          decoration: InputDecoration(
              labelText: "Şifrenizi Giriniz",
              fillColor: Color(0xFF37372D),
              filled: true),
        ),
      );
}
