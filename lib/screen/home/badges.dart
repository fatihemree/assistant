import 'package:flutter/material.dart';
import '../../ui/theme/themeData.dart';

class Badges extends StatelessWidget {
  final badgesCount = "10";
  final badgesImage =
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/achievements/armorPiercer.png";
  final badgeName = "Kurşun";

  @override
  Widget build(BuildContext context) {
    return gridView;
  }

  Widget get gridView => GridView.count(
        padding: const EdgeInsets.all(15),
        childAspectRatio: 120 / 160,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
          cards,
        ],
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
}
