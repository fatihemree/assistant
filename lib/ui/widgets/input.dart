import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InputLogin extends StatefulWidget {
  final String labelText;

  InputLogin(this.labelText);

  @override
  _InputLoginState createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Hexcolor('#37372D'),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
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
              // border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: widget.labelText,
              labelStyle: TextStyle(color: Colors.white30),
            ),
          ),
        ),
      ),
    );
  }
}
