// import 'package:assistant/logger.dart';
import 'package:assistant/ui/widgets/infoAlertButton.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:assistant/ui/widgets/bottomSheet.dart';
import 'package:assistant/ui/widgets/input.dart';
import 'package:assistant/ui/theme/themeData.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
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
  /* Widget get topBarButton => Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[sideBarButton, InfoLoginAlert()],
        ),
      );  */

  Widget get topBarButton => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [InfoLoginAlert()],
      );

// Sidebar buton
  Widget get sideBarButton => FlatButton(
      onPressed: null,
      child: Icon(Icons.menu, color: Colors.white70));

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

  Widget get loginInputRemember => Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Hexcolor("#E2642A")),
              child: Checkbox(
                  focusColor: Hexcolor("#E2642A"),
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
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )
        ],
      );

  Widget get loginInputButton => SizedBox(
        width: double.infinity,
        child: FlatButton(
          color: Hexcolor('#919284'),
          child: Text(
            "GİRİŞ YAP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
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
