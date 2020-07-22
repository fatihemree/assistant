import 'package:flutter/material.dart';
// import 'package:assistant/ui/styles/drawerMenuStyle.dart';
import 'package:hexcolor/hexcolor.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Hexcolor("#303028")),
      child: Drawer(
        child: ListView(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          children: [
            drawerHeader(),
            drawerContent(),
          ],
        ),
      ),
    );
  }

  Widget drawerContent() => Container(
        // color: Hexcolor("#303028"),
        child: Column(
          children: [
            DrawerListItem(
                notification: "",
                icon: Icons.people_outline,
                title: "Oyuncular"),
            DrawerListItem(
                notification: "", icon: Icons.timelapse, title: "Tarihçe"),
            DrawerListItem(
                notification: "", icon: Icons.flag, title: "Klanlar"),
            DrawerListItem(
                notification: "",
                icon: Icons.bookmark,
                title: "Klan Reytingleri"),
            DrawerListItem(
                notification: "",
                icon: Icons.check_circle,
                title: "Klan Savaşları"),
            DrawerListItem(
                notification: "",
                icon: Icons.access_alarms,
                title: "Kişisel Görevler"),
            DrawerListItem(
                notification: "", icon: Icons.call_split, title: "Tankopedi"),
            DrawerListItem(
                notification: "", icon: Icons.help_outline, title: "Destek"),
            DrawerListItem(
                notification: "", icon: Icons.book, title: "Haberler"),
            DrawerListItem(
                notification: "", icon: Icons.settings, title: "Ayarlar"),
            ListTile(
              leading: Text(
                "WoT Assistant,3.2.1 (13991)",
                style: TextStyle(color: Colors.white70),
              ),
            )
          ],
        ),
      );

  Widget get menuLogo => Image.asset(
        'assets/img/menuLogo.png',
        fit: BoxFit.cover,
      );

  Widget drawerHeader() => DrawerHeader(
        decoration: BoxDecoration(color: Hexcolor('#37372D')),
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        margin: EdgeInsets.only(bottom: 3),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: menuLogo,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "İstatistiklerim",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text("İstatistikleri görmek için giriş yapın",
                        style:
                            TextStyle(fontSize: 12.9, color: Colors.white70)),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

// ignore: must_be_immutable
class DrawerListItem extends StatelessWidget {
  String title;
  IconData icon;
  String notification;

  DrawerListItem({
    @required this.icon,
    @required this.title,
    this.notification,
  })  : assert(icon != null),
        assert(title != null);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white10,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(title, style: drawerItemStyle),
        trailing: Text(notification, style: drawerItemStyle),
      ),
    );
  }
}

TextStyle drawerItemStyle = TextStyle(color: Colors.white);

/*
*
* class parametrelerine koşul atamasını araştır
*
*/
