import 'package:flutter/cupertino.dart';
import '../theme/themeData.dart';

class HeaderText extends StatelessWidget {
  String title;
  var icon;
  HeaderText({this.title});
  @override
  Widget build(BuildContext context) {
    return text;
  }

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
