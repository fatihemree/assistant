import 'package:flutter/material.dart';
import '../ui/theme/themeData.dart';
import 'drawerMenu.dart';
import '../ui/widgets/tankopediCard.dart';
import 'package:sticky_headers/sticky_headers.dart';

// ignore: must_be_immutable
class Tankopedi extends StatelessWidget {
  // const Tankopedi({Key key}) : super(key: key);
  List<String> categoryTank = [
    "S.S.C.B",
    "Almanya",
    "A.B.D",
    "Fransa",
    "İngiltere"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBody,
      drawer: DrawerMenu(),
      appBar: AppBar(
          backgroundColor: backgroundlight,
          elevation: 0,
          title: Text(
            "Tankopedi",
            style: TextStyle(color: white),
          ),
          actions: [
            Icon(Icons.search),
          ]),
      body: gridHeader,
    );
  }

  Widget get gridHeader => ListView.builder(
        itemCount: categoryTank.length,
        itemBuilder: (BuildContext context, int index) => StickyHeader(
          header: Container(
            height: 38.0,
            color: backgroundlight,
            padding: new EdgeInsets.symmetric(horizontal: 12.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              categoryTank[index],
              style: TextStyle(
                  color: textGrey, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          content: Container(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: categoryTank.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                // crossAxisCount: 2,
                // childAspectRatio: 1,
              ),
              itemBuilder: (contxt, indx) {
                return TankopediCard();
              },
            ),
          ),
        ),
        shrinkWrap: true,
      );

}
