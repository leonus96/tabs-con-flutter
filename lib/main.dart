import 'package:flutter/material.dart';
import 'home.dart';
void main() => runApp(
  MaterialApp(
    title: "Pestañas",
    home: Home(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.red,
      accentColor: Colors.red,
    ),
  )
);

