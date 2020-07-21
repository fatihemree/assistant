import 'dart:ui';

import 'package:assistant/ui/theme/themeData.dart';
import 'package:flutter/material.dart';

class UserStatistic_Info extends StatelessWidget {
  String name;
  String value;
  CrossAxisAlignment align;

  UserStatistic_Info({
    this.name,
    this.value,
    this.align,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          name,
          style: nameStyle,
        ),
        Text(
          value,
          style: valueStyle,
        ),
      ],
    );
  }

  TextStyle nameStyle = TextStyle(color: textGrey, fontSize: 15);
  TextStyle valueStyle = TextStyle(color: white, fontSize: 22);
}
