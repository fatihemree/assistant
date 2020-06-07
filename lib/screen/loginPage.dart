import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:assistant/ui/widgets/bottomSheet.dart';
import 'package:assistant/ui/widgets/input.dart';
import 'package:assistant/ui/theme/themeData.dart';
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

// Colors hexCode
  Widget get loginGrid => SingleChildScrollView(
        child: Container(
          child: Column(
            children: [topBarButton, content],
          ),
        ),
      );

  Widget get content => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[logo, form],
        ),
      );

  Widget get logo => Image.asset(
        'assets/img/logo.png',
        width: 250,
        fit: BoxFit.cover,
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

  Widget get form => Container(
        width: 300,
        child: Column(
          children: <Widget>[
            BottomSheetMenu(),
            InputLogin("Mail Adresinizi Giriniz"),
            InputLogin("Şifrenizi Giriniz"),
            loginInputRemember,
            loginInputButton,
            loginInputLink
          ],
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
              activeColor: Hexcolor('#919284'),
              focusColor: Hexcolor('#919284'),
              hoverColor: Hexcolor('#919284'),
              value: false,
              tristate: false,
              onChanged: (bool value) {}),
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.red),
              child: Checkbox(
                  value: rememberBool,
                  tristate: false,
                  onChanged: (bool value) {
                    setState(() {
                      rememberBool = value;
                    });
                  })),
          Text(
            "Beni Hatırla",
            style: TextStyle(
                // color: Colors.white70,
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
}
