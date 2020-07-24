// ignore: unused_import
import 'package:assistant/ui/theme/themeData.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import '../../ui/widgets/HeaderText.dart';
import '../../ui/widgets/home/userStatistic.dart';
import '../../ui/widgets/home/award.dart';

// ignore: must_be_immutable
class Abstrack extends StatelessWidget {
  // const Abstrack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: containerGrid,
    );
  }

  Widget get containerGrid => Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UserStatistic(),
            Award(),
            loadingWidget("Araçlar"),
            loadingWidget("Zaferler / Savaşlar"),
          ],
        ),
      );

  Widget  loadingWidget(value) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
          children: [
            awardHeader(value),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: loading,
            ),
          ],
        ),
  );

  Widget awardHeader(value) => Container(
      alignment: Alignment.topLeft,
      child: Text(value, style: awardHeaderStyle));
  TextStyle awardHeaderStyle = TextStyle(color: white, fontSize: 18);

  Widget get loading => SizedBox(
        width: 120,
        child: LinearProgressIndicator(
          minHeight: 3,
          backgroundColor: turuncu,
          valueColor: AlwaysStoppedAnimation<Color>(turuncuDark),
        ),
      );
}
