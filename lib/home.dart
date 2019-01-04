import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
    void initState() {
      super.initState();
      _controller = TabController(length: 4, vsync: this);
    }
  
  @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pestañas con Flutter'),
          bottom: getTabBar(),
        ),
        body: getTabBarView(),
      );
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.looks_one),
        ),
        Tab(
          icon: Icon(Icons.looks_two),
        ),
        Tab(
          icon: Icon(Icons.looks_3),
        ),
        Tab(
          icon: Icon(Icons.looks_4),
        ),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: _controller,
    );
  }

}