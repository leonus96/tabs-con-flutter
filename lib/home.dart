import 'package:flutter/material.dart';
import 'tabs/tab-widget.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
    void initState() {
      super.initState();
      _controller = TabController(length: 3, vsync: this);
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
        body: getTabBarView(
          <Widget>[
            TabWidget('assets/mario0.png'),
            TabWidget('assets/mario.png'),
            TabWidget('assets/mario2.png'),
          ]
        ),
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