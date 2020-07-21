import 'package:flutter/material.dart';

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
      appBar: AppBar(
        bottom: tabbarMenu(_tabController),
      ),
      body: tabBarView(_tabController),
    );
  }

  Widget tabbarMenu(_tabController) => TabBar(
        tabs: [
          Tab(icon: Icon(Icons.access_alarms)),
          Tab(icon: Icon(Icons.access_alarms)),
          Tab(icon: Icon(Icons.access_alarms)),
        ],
        controller: _tabController,
      );

  Widget tabBarView(_tabController) => TabBarView(
        children: [
          Text("data"),
          Text("data2"),
          Text("data3"),
        ],
        controller: _tabController,
      );
}
