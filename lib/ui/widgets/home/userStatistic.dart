import 'package:flutter/material.dart';
import '../HeaderText.dart';
import '../../theme/themeData.dart';
import './UserStatisticInfo.dart';

class UserStatistic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return userStatistic;
  }

  Widget get userStatistic => Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
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
                userStatistic_row(),
                userStatistic_rowTwo(),
                userStatistic_rowThree()
              ],
            ),
          ),
        ),
      );

  Widget userStatistic_row() => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserStatistic_Info(
              name: "Savaşlar",
              value: "50",
              align: CrossAxisAlignment.start,
            ),
            Image.asset(
              "assets/img/clan.png",
              height: 75,
            ),
            UserStatistic_Info(
                name: "Zaferler", value: "80", align: CrossAxisAlignment.end),
          ],
        ),
      );

  Widget userStatistic_rowTwo() => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserStatistic_Info(
              name: "Ort. Hasar",
              value: "50",
              align: CrossAxisAlignment.start,
            ),
            UserStatistic_Info(
              name: "Kişisel Reyting",
              value: "2.229",
              align: CrossAxisAlignment.center,
            ),
            UserStatistic_Info(
                name: "Ortalama\nDeneyim",
                value: "244",
                align: CrossAxisAlignment.end),
          ],
        ),
      );

  Widget userStatistic_rowThree() => Padding(
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

  TextStyle userStatistic_info__bottomStyle =
      TextStyle(color: textGrey, fontSize: 13);
}
