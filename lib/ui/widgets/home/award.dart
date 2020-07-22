import 'package:assistant/ui/widgets/HeaderText.dart';
import 'package:flutter/material.dart';
import '../../theme/themeData.dart';
import 'package:assistant/logger.dart';

// ignore: must_be_immutable
class Award extends StatelessWidget {
  List<String> awardBadge = [
    "assets/img/award/1.png",
    "assets/img/award/2.png",
    "assets/img/award/3.png",
    "assets/img/award/4.png",
    "assets/img/award/1.png",
    "assets/img/award/2.png",
    "assets/img/award/3.png",
    "assets/img/award/4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [awardHeader, listAwardBadge, awardBottomHeader],
    );
  }

  Widget get awardHeader => Container(
      alignment: Alignment.topLeft,
      child: Text("Değerli Ödüller", style: awardHeaderStyle));
  TextStyle awardHeaderStyle = TextStyle(color: white, fontSize: 25);

  Widget get listAwardBadge => Container(
        height: 140,
        width: double.infinity,
        child: Center(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: awardBadge.length,
              itemBuilder: (context, index) =>
                  awardBageItems(awardBadge[index], index)),
        ),
      );

  Widget awardBageItems(image, value) => Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              image,
              height: 60,
            ),
            Text(
              value.toString(),
              style: awardBageItemsValueStyle,
            )
          ],
        ),
      );
  TextStyle awardBageItemsValueStyle = TextStyle(
    color: sari,
    fontSize: 14,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(0.1, 0.1),
        blurRadius: 3.0,
        color: sari,
      ),
    ],
  );

  Widget get awardBottomHeader => Container(
      alignment: Alignment.bottomRight,
      child: HeaderText(
        title: "Tüm ödüller",
        iconItem: Icons.arrow_right,
      ));
}
