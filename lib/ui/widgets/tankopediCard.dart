import 'package:flutter/material.dart';
import '../theme/themeData.dart';

// ignore: must_be_immutable
class TankopediCard extends StatelessWidget {
  final String tankModel = "SU-28";
  final String tankFlag = "assets/img/flag/abd.png";
  final String tankRutbe = "assets/img/rutbe/td.png";
  final String tankSeviye = "III";
  final String tankImage =
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/uploaded/vehicles/hd_thumbnail/T-34.png";
  final String tankWarLength = "15";
  final String tankWinRate = "28%";
  // const TankopediaCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return click;
  }

  Widget get click => InkWell(child: card, onTap: () => null);

  Widget get card => Expanded(
        child: Container(
          color: backgroundlight,
          child: Stack(
            children: [
              Column(
                children: [cardTanksImageGrid, cardTankName],
              ),
              tankNavTop
            ],
          ),
        ),
      );
  Widget get cardTankName => Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
          child: Text(
            "IS-4",
            style: tankopediNameStyle,
          ),
        ),
      );
  Widget get cardTanksImageGrid => Expanded(
        child: Container(
          // alignment: Alignment.bottomCenter,
          // height: 200,
          // width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  matchTextDirection: true,
                  repeat: ImageRepeat.noRepeat,
                  image: AssetImage("assets/img/tankopedi-bg.png"))),
          child: tankResim,
        ),
      );
  Widget get tankResim => Image.network(tankImage);

  Widget get tankNavTop => Container(
        color: Colors.black26,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                tankFlag,
                height: 18,
              ),
              SizedBox(width: 5),
              Image.asset(
                tankRutbe,
                height: 16,
              ),
              SizedBox(width: 5),
              Text(
                tankSeviye,
                style: seviyeText,
              ),
            ],
          ),
        ),
      );
  TextStyle tanksTextStyle = TextStyle(color: textGrey, fontSize: 24);
  TextStyle tankopediNameStyle = TextStyle(color: textGrey, fontSize: 20);
  TextStyle seviyeText =
      TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 18);
}
