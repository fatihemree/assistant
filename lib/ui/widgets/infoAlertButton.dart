import "package:flutter/material.dart";
import 'package:assistant/ui/theme/themeData.dart';
import 'package:hexcolor/hexcolor.dart';

class InfoLoginAlert extends StatefulWidget {
  InfoLoginAlert({Key key}) : super(key: key);

  @override
  _PopAlertState createState() => _PopAlertState();
}

class _PopAlertState extends State<InfoLoginAlert> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          _showDialog();
        },
        child: Icon(
          Icons.info_outline,
          size: 35,
          color: Colors.white70,
        ));
  }

// user defined function
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Hexcolor('#37372D'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              infoAlertList(
                Icons.alternate_email,
                "Eposta",
                "Bu uygulama Xbox ve Ps4 kullanıcılarının hesaplarını desteklemiyor.",
              ),
              infoAlertList(
                Icons.save,
                "Beni Hatırla",
                "Bu özellik hesabınızın güvenliğini azaltır. Lütfen ikili doğrulama faktörünü aktif ediniz.",
              ),
              infoAlertList(
                Icons.warning,
                "Wargaming.net ID'niz",
                "Hesabınızı etkinleştirmeniz gerekiyor",
              )
            ],
          ),
        );
      },
    );
  }

  Widget infoAlertList(infoIcons, infoTitle, infoContent) => Padding(
    padding: const EdgeInsets.only(bottom: 10,top:10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                infoIcons,
                color: Hexcolor('#E2642A'),
              ),
            ),
            Text(infoTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:5),
          child: Text(
            infoContent,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        )
      ],
    ),
  );
}
