import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color turuncu = Hexcolor('#E2642A');
Color turuncuDark = Hexcolor('#75140B');
Color sari = Hexcolor('#F3C169');
Color backgroundBody = Hexcolor('#2B2B23');
Color backgroundlight = Hexcolor('#39392F');
Color white = Hexcolor('#FAF6DD');
Color textGrey = Hexcolor('#828374');
Color barValue = Hexcolor('#4E4B42');
Color barBG = Hexcolor('#24231F');


BoxDecoration conStyle = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/img/bg.png"),
    fit: BoxFit.cover,
  ),
);

TextStyle loginLink = TextStyle(
  fontSize: 16,
  color: Hexcolor('#E2642A'),
  fontWeight: FontWeight.w500,
);

/*
*
* infoAlertButtonStyle
*
*/

BoxDecoration infoGridContainer = BoxDecoration(color: Hexcolor('#37372D'));
