import 'dart:ui';

import 'package:flutter/material.dart';
import '../../ui/theme/themeData.dart';

// ignore: must_be_immutable
class Tanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          tankCards,
          tankCards,
          tankCards,
          tankCards,
          tankCards,
          tankCards,
        ],
      ),
    );
  }

  Widget get tabNav => Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: Row(
          children: [
            Container(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/img/flag/abd.png",
                    height: 15,
                  ),
                  Image.asset(
                    "assets/img/rutbe/td.png",
                    height: 13,
                  ),
                  Text(
                    "II",
                    style: seviyeText,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  TextStyle seviyeText =
      TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 15);
  Widget get tankResim => Image.network(
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/uploaded/vehicles/hd_thumbnail/T-34.png");

  // Widget get listTank=>
  Widget get tankCards => Padding(
        padding:
            const EdgeInsets.only(right: 8.0, left: 8.0, top: 3, bottom: 3),
        child: Container(
            color: backgroundlight,
            height: 100,
            // width: double.infinity,
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // tabNav,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.center,
                                matchTextDirection: true,
                                repeat: ImageRepeat.noRepeat,
                                image: AssetImage("assets/img/tank-bg.png"))),
                        child: tankResim,
                      ),
                      Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("SU-26", style: TextStyle(color: white)),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "16",
                                  style: tanksTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "70%",
                        style: tanksTextStyle,
                      ),
                      Icon(Icons.chevron_right, color: textGrey)
                    ],
                  ),
                ],
              ),
              tabNav
            ])),
      );

  TextStyle tanksTextStyle = TextStyle(color: textGrey, fontSize: 24);
}
