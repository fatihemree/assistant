import 'package:flutter/material.dart';
import '../HeaderText.dart';
import '../../theme/themeData.dart';
import './UserStatisticInfo.dart';

// ignore: must_be_immutable
class UserStatistic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        userStatistic,
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Container(
            alignment: Alignment.centerRight,
            child: HeaderText(title: "Tüm İstatistikler",iconItem:Icons.arrow_right)),
        )
      ],
    );
  }

  Widget get userStatistic => Container(
    color: backgroundlight,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: HeaderText(
              title: "Rastagele,Tank bölüğü",
            ),
          ),
          userStatisticRow(),
          userStatisticRowTwo(),
          userStatisticRowThree()
        ],
      ),
    ),
  );

  Widget userStatisticRow() => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserStatisticInfo(
              name: "Savaşlar",
              value: "50",
              align: CrossAxisAlignment.start,
            ),
            Image.asset(
              "assets/img/clan.png",
              height: 75,
            ),
            UserStatisticInfo(
                name: "Zaferler", value: "80", align: CrossAxisAlignment.end),
          ],
        ),
      );

  Widget userStatisticRowTwo() => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserStatisticInfo(
              name: "Ort. Hasar",
              value: "50",
              align: CrossAxisAlignment.start,
            ),
            UserStatisticInfo(
              name: "Kişisel Reyting",
              value: "2.229",
              align: CrossAxisAlignment.center,
            ),
            UserStatisticInfo(
                name: "Ortalama\nDeneyim",
                value: "244",
                align: CrossAxisAlignment.end),
          ],
        ),
      );

  Widget userStatisticRowThree() => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.access_time, size: 13, color: textGrey),
                  Text("14 May 2018, 22:17",
                      style: userStatistic_info__bottomStyle)
                ],
              ),
            ),
            Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Hesap oluşturuldu",style: userStatistic_info__bottomStyle),
                Text("24.03.207", style: userStatistic_info__bottomStyle)
              ],
            ))
          ],
        ),
      );

  // ignore: non_constant_identifier_names
  TextStyle userStatistic_info__bottomStyle =
      TextStyle(color: textGrey, fontSize: 13);
}
