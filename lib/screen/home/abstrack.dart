// ignore: unused_import
import 'package:assistant/ui/theme/themeData.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import '../../ui/widgets/HeaderText.dart';
import '../../ui/widgets/home/userStatistic.dart';
import '../../ui/widgets/home/award.dart';

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
          ],
        ),
      );
}
