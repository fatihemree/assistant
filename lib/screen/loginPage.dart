import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:assistant/ui/widgets/bottomSheet.dart';
// import "package:assistant/logger.dart";

class LoginScreenPage extends StatefulWidget {
  LoginScreenPage({Key key}) : super(key: key);
  @override
  _LoginScreenPageState createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  bool rememberBool = false;
//  var dropdownValue="";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: conStyle,
      ),
      Expanded(child: loginGrid)
    ]);
  }

  BoxDecoration conStyle = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/img/bg.png"),
      fit: BoxFit.cover,
    ),
  );

// Colors hexCode
  Widget get loginGrid => Container(
        child: Column(
          children: [topBarButton, content],
        ),
      );

  Widget get content => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[logo, form],
      );

  Widget get logo => Center(
        child: Image.asset(
          'assets/img/logo.png',
          width: 250,
          fit: BoxFit.cover,
        ),
      );

// tapbar kafesi
  Widget get topBarButton => Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[sideBarButton, infoButton],
        ),
      );

// İnfo Buton
  Widget get infoButton => FlatButton(
      onPressed: null,
      child: Icon(
        Icons.info_outline,
        size: 35,
        color: Colors.white70,
      ));

// Sidebar buton
  Widget get sideBarButton => FlatButton(
      onPressed: null,
      child: Icon(Icons.menu, size: 35, color: Colors.white70));

/*
      *
      * Form Control
      *
      */

  Widget get form => Center(
        child: Container(
          width: 300,
          child: Column(
            children: <Widget>[
              BottomSheetMenu(),
              loginInputUser,
              loginInputPassword,
              loginInputRemember,
              loginInputButton,
              loginInputLink
            ],
          ),
        ),
      );

  Widget get loginInputUser => Container(
        decoration: BoxDecoration(
          color: Hexcolor('#37372D'),
        ),
        child: TextField(
          onChanged: (val) {},
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: "Mail Adresinizi Giriniz",
            labelStyle: TextStyle(color: Colors.white30),
          ),
        ),
      );

  Widget get loginInputPassword => Container(
        decoration: BoxDecoration(
          color: Hexcolor('#37372D'),
        ),
        child: TextField(
          onChanged: (val) {},
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: "Şifrenizi Giriniz",
            labelStyle: TextStyle(color: Colors.white30),
          ),
        ),
      );

  Widget get loginInputRemember => Row(
        children: [
          Checkbox(
              // materialTapTargetSize: MaterialTapTargetSize.padded,
              // tristate: false,
              activeColor: Colors.white38,
              focusColor: Colors.white38,
              hoverColor: Colors.white38,
              value: rememberBool,
              onChanged: (bool value) {
                setState(() {
                  rememberBool = value;
                });
              }),
          Text(
            "Beni Hatırla",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )
        ],
      );

  Widget get loginInputButton => SizedBox(
        width: double.infinity,
        child: FlatButton(
          color: Hexcolor('#919284'),
          child: Text("GİRİŞ YAP"),
          onPressed: () {
            print("Butona 1 Kez Tıklandı");
          },
          padding: EdgeInsets.all(15),
          textColor: Colors.black87,
        ),
      );

  Widget get loginInputLink => Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "WarGaming.net ID'niz yok mu?",
            style: loginLink,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Şifrenizimi mi unuttunuz?", style: loginLink),
        )
      ]);
  TextStyle loginLink = TextStyle(
      fontSize: 18, color: Hexcolor('#919284'), fontWeight: FontWeight.w500);

}
