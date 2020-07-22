import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/themeData.dart';

// ignore: must_be_immutable
class HeaderText extends StatelessWidget {
  String title;
  IconData iconItem;
  HeaderText({this.title, this.iconItem});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        text,
        icons(iconItem),
      ],
    );
  }

  Widget icons(iconItem) => Icon(iconItem, color: sari, size: 15);
  Widget get text => Text(
        title.toUpperCase(),
        style: headerTextStyle,
      );

  TextStyle headerTextStyle = TextStyle(
    color: sari,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(0.1, 0.1),
        blurRadius: 3.0,
        color: sari,
      ),
    ],
  );
}
