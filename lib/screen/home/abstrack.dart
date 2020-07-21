import 'package:assistant/ui/theme/themeData.dart';
import 'package:flutter/material.dart';
import '../../ui/widgets/HeaderText.dart';
import '../../ui/widgets/home/userStatistic.dart';

class Abstrack extends StatelessWidget {
  // const Abstrack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: containerGrid,
    );
  }

  Widget get containerGrid => Column(
        mainAxisSize: MainAxisSize.min,
        children: [UserStatistic()],
      );

}
