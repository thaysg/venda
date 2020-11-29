import 'package:flutter/material.dart';
import 'package:venda/common/Bottom_Navigation_Bar/bottom_navigation_bar.dart';
import 'package:venda/layout/layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TG STORE',
      theme: ThemeData(
        primaryColor: Layout.primaryColor(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavigationBarCustom(),
    );
  }
}
