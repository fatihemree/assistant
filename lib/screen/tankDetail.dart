import 'package:flutter/material.dart';
import '../ui/theme/themeData.dart';
import 'drawerMenu.dart';
import '../ui/screenSize/screenSize.dart';
import "../ui/widgets/tankFeaturesCard.dart";
import 'package:sticky_headers/sticky_headers.dart';

// ignore: must_be_immutable
class TankDetail extends StatelessWidget {
  List<String> tankFeaturesList = [
    "Silah",
    "Zırh",
    "Mavevra",
    "Görüş Sinyal Mesafesi",
  ];

  final String tankModel = "SU-28";
  final String tankFlag = "assets/img/flag/abd.png";
  final String tankRutbe = "assets/img/rutbe/td.png";
  final String tankSeviye = "III";
  final String tankImage =
      "http://glossary-eu-static.gcdn.co/icons/wotb/current/uploaded/vehicles/hd_thumbnail/T-34.png";
  final String tankWarLength = "15";
  final String tankWinRate = "28%";
  BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    ctx = context;

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
          backgroundColor: backgroundlight,
          elevation: 0,
          title: Text(
            "IS-4",
            style: TextStyle(color: white),
          ),
          actions: [
            Icon(Icons.search),
          ]),
      body: Container(child: grid),
    );
  }

  Widget get grid => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          header,
          content,
        ],
      );

  BoxDecoration headerStyle = BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      alignment: Alignment.bottomCenter,
      matchTextDirection: true,
      repeat: ImageRepeat.noRepeat,
      image: AssetImage("assets/img/tankDetailHeader.png"),
    ),
  );

  Widget get header => Container(
        decoration: headerStyle,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tankResim,
                headerContentText,
              ],
            ),
            tankPriceAndExperience,
            headerBottomNav
          ],
        ),
      );

  Widget get headerBottomNav => Container(
        color: Colors.black26,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 15.0),
          child: Text("İSTATİSTİKLERE",
              style: TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        alignment: Alignment.centerRight,
      );
  Widget get tankPriceAndExperience => Container(
        child: Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                priceAndExperience(Icons.attach_money, Colors.green, "6,30000"),
                SizedBox(width: 10),
                priceAndExperience(Icons.star_border, sari, "6,30000"),
              ],
            )),
        alignment: Alignment.centerRight,
      );

  Widget get tankResim => Image.network(
        tankImage,
        width: displayWidth(ctx) * 0.5,
      );

  Widget get headerContentText => Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerContent(tankBayrakImage, "A.B.D"),
            headerContent(tankRutbeImage, "Tank Avcısı"),
            headerContent(tankSeviyeImage, "Seviye"),
          ],
        ),
      );

  Widget priceAndExperience(IconData icon, Color iconColor, String text) =>
      Container(
          child: Row(
        children: [
          Icon(
            icon,
            size: 14,
            color: iconColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, color: white),
            ),
          ),
        ],
      ));

  Widget headerContent(image, text) => Container(
          child: Row(
        children: [
          image,
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: headerTitle(text),
          ),
        ],
      ));

  Widget headerTitle(value) => Text(
        value,
        style: headerContentStyle,
      );
  Widget get tankBayrakImage => Image.asset(
        tankFlag,
        height: 18,
      );

  Widget get tankRutbeImage => Image.asset(
        tankRutbe,
        height: 16,
      );
  Widget get tankSeviyeImage => Text(
        tankSeviye,
        style: seviyeText,
      );

  TextStyle headerContentStyle =
      TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 18);

  TextStyle seviyeText =
      TextStyle(color: sari, fontWeight: FontWeight.w500, fontSize: 18);

  Widget get content => Expanded(
        child: Container(
          child: tankFeatureCategory,
        ),
      );

  Widget get tankFeatureCategory => ListView.builder(
        itemCount: tankFeaturesList.length,
        itemBuilder: (BuildContext context, int index) => StickyHeader(
            header: tankFeatureCategoryHeader(tankFeaturesList[index]),
            content: tankFeatureCategoryContent),
      );

  Widget tankFeatureCategoryHeader(featuresName) => Container(
        color: backgroundlight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(featuresName,
              style: TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        alignment: Alignment.center,
      );

  Widget get tankFeatureCategoryContent => Container(
        child: Container(color: backgroundBody, child: tankFeauresListContent),
      );

  Widget get tankFeauresListContent => ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (ctx, index) =>
            Divider(thickness: 2.0, color: backgroundlight),
        itemCount: 5,
        itemBuilder: (context, index) => TankFeaturesCard(),
      );
}
