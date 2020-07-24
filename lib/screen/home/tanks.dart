import 'package:flutter/material.dart';
import '../../ui/theme/themeData.dart';

// ignore: must_be_immutable
class Tanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: ListView(children: [
        tankCards,
        tankCards,
        tankCards,
        tankCards,
        tankCards,
        tankCards,
      ],),
    );
  }

  Widget get tabNav => Container(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/img/flag.png",
              height: 20,
            ),
            Image.asset(
              "assets/img/rutbe.png",
              height: 10,
            ),
            Image.asset(
              "assets/img/seviye.png",
              height: 15,
            ),
          ],
        ),
      );

  Widget get tankResim => Image.asset(
        "assets/img/ornekTank.png",
      );

  // Widget get listTank=>
  Widget get tankCards => Padding(
        padding: const EdgeInsets.only(right:8.0,left:8.0,top:3,bottom:3),
        child: Container(
            color: backgroundlight,
            height: 100,
            // width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // tabNav,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    Text(
                      "16",
                      style: tanksTextStyle,
                    ),
                    Text(
                      "70%",
                      style: tanksTextStyle,
                    ),
                    Icon(Icons.chevron_right, color: textGrey)
                  ],
                ),
              ],
            )),
      );

  TextStyle tanksTextStyle = TextStyle(color: textGrey, fontSize: 24);
}
