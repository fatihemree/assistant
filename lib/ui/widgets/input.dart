import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InputLogin extends StatelessWidget {
  String labelText;

  InputLogin(this.labelText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5,top:5),
      child: Container(
        decoration: BoxDecoration(
          color: Hexcolor('#37372D'),
        ),
        child: TextField(
          onChanged: (val) {},
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white30),
          ),
        ),
      ),
    );
  }
}


