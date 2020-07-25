import 'dart:ui';

import 'package:flutter/material.dart';
import '../../ui/theme/themeData.dart';

// ignore: must_be_immutable
class Tanks extends StatelessWidget {
  final String tankModel = "SU-28";
  final String tankFlag = "assets/img/flag/abd.png";
  final String tankRutbe = "assets/img/rutbe/td.png";
  final String tankSeviye = "III";
  final String tankImage =
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/uploaded/vehicles/hd_thumbnail/T-34.png";
  final String tankWarLength = "15";
  final String tankWinRate = "28%";

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

  Widget get tankResim => Image.network(tankImage);

  // Widget get listTank=>
  Widget get tankCards => Padding(
        padding:
            const EdgeInsets.only(right: 8.0, left: 8.0, top: 3, bottom: 3),
        child: Container(
            color: backgroundlight,
            height: 100,
            // width: double.infinity,
            child: Stack(children: [
              cardContent,
              tabNav,
            ])),
      );

  Widget get cardContent => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // tabNav,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cardTanksImageGrid,
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(tankModel, style: TextStyle(color: white)),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          tankWarLength,
                          style: tanksTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                tankWinRate,
                style: tanksTextStyle,
              ),
              Icon(Icons.chevron_right, color: textGrey)
            ],
          ),
        ],
      );

  Widget get cardTanksImageGrid => Container(
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
      );

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
                    tankFlag,
                    height: 15,
                  ),
                  Image.asset(
                    tankRutbe,
                    height: 13,
                  ),
                  Text(
                    tankSeviye,
                    style: seviyeText,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  TextStyle tanksTextStyle = TextStyle(color: textGrey, fontSize: 24);
  TextStyle seviyeText =
      TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 15);
}
