import 'package:flutter/material.dart';
import '../theme/themeData.dart';

class TankFeaturesCard extends StatefulWidget {
  TankFeaturesCard({Key key}) : super(key: key);

  @override
  _TankFeaturesCardState createState() => _TankFeaturesCardState();
}

class _TankFeaturesCardState extends State<TankFeaturesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardFeature,
    );
  }

  Widget get cardFeature => Container(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardRowTop,
            cardRowBottom,
          ],
        ),
      ));

  Widget get cardRowTop => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Max Cephane,adet",
              style: TextStyle(color: textGrey, fontSize: 16)),
          Text("30",
              style: TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 18))
        ],
      );
  Widget get cardRowBottom => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: LinearProgressIndicator(
                backgroundColor: barBG,
                valueColor: AlwaysStoppedAnimation<Color>(barValue),
                value: 0.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("3,7",
                style: TextStyle(
                    color: textGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          )
        ],
      );
}
