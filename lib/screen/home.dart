import 'package:flutter/material.dart';
import 'home/abstrack.dart';
import 'home/tanks.dart';
import 'home/badges.dart';
import '../ui/theme/themeData.dart';
import 'drawerMenu.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      backgroundColor: backgroundBody,
      appBar: AppBar(
        
          backgroundColor: backgroundlight,
          elevation: 0,
          title: Text(
            "fatihemrekalem",
            style: TextStyle(color: white),
          ),
          bottom: tabbarMenu(_tabController),
          actions: [
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ]),
      body: tabBarView(_tabController),
    );
  }

  Widget tabbarMenu(_tabController) => TabBar(
        indicatorColor: white,
        tabs: [
          Tab(
            text: "ÖZET",
          ),
          Tab(
            text: "ARAÇLAR",
          ),
          Tab(
            text: "BAŞARILAR",
          ),
        ],
        controller: _tabController,
      );

  Widget tabBarView(_tabController) => TabBarView(
        children: [
          Abstrack(),
          Tanks(),
          Badges(),
        ],
        controller: _tabController,
      );
}
