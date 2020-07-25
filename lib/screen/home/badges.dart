import 'package:flutter/material.dart';
import '../../ui/theme/themeData.dart';

class Badges extends StatelessWidget {
  final badgesCount = "10";
  final badgesImage =
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/achievements/armorPiercer.png";
  final badgeName = "Kurşun";
  final badgeDesc =
      "bir savaştaki veya beş düşman aracı yok edin. \n sadece rastgele savaşlarda alınabilir";

  @override
  Widget build(BuildContext context) {
    return gridView(context);
  }

  Widget gridView(context) => GridView.count(
        padding: const EdgeInsets.all(15),
        childAspectRatio: 120 / 160,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [modalBadges(context)],
      );

  Widget modalBadges(context) => InkWell(
        child: cards,
        onTap: () => _showDialog(context),
      );

  Widget get cards => Container(
        // width: 120,
        // height: 160,
        color: backgroundlight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  badgesCount,
                  style: TextStyle(color: white),
                ),
              ),
              Image.network(
                badgesImage,
              ),
              Text(badgeName, style: TextStyle(color: textGrey, fontSize: 18))
            ],
          ),
        ),
      );

  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: backgroundlight,
          content: modalContent(),
        );
      },
    );
  }

  Widget modalContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            badgesImage,
            height: 80,
          ),
          Text(
            "<<Cengaver>>",
            style: TextStyle(color: white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              badgeDesc,
              style: TextStyle(color: textGrey, fontSize: 13),
            ),
          )
        ],
      );
}
