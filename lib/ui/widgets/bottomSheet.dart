import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

class BottomSheetMenu extends StatefulWidget {
  @override
  _BottomSheetMenuState createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  String _selectedItem = 'BDT';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_selectedItem, style: buttonStyle),
          Icon(Icons.arrow_drop_down, color: Colors.orange, size: 18)
        ],
      ),
      onTap: () => _onButtonPressed(),
    );
  }

  TextStyle buttonStyle = TextStyle(
      fontSize: 18, color: Colors.orange, fontWeight: FontWeight.w500);

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            // height: 250,
            height: MediaQuery.of(context).size.height / 2.25,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Bölge",
            style: TextStyle(fontSize: 22),
          ),
        ),
        listTile("BDT"),
        listTile("Avrupa"),
        listTile("Kuzey Amerika"),
        listTile("Asya"),
      ],
    );
  }

  Widget listTile(textVal) => Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 0.5, color: Colors.grey[350]))),
        child: ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(textVal),
          onTap: () => _selectItem(textVal),
        ),
      );

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
