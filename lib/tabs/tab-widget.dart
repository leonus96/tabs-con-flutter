import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final route;
  TabWidget(this.route);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(route),
      ),
    );
  }
}