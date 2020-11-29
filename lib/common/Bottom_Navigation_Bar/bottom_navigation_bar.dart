import 'package:flutter/material.dart';
import 'package:venda/layout/layout.dart';
import 'package:venda/screens/about_page/about_page.dart';
import 'package:venda/screens/home_page/home_page.dart';
import 'package:venda/screens/setup_page/setup_page.dart';

class NavigationBarCustom extends StatefulWidget {
  @override
  _NavigationBarCustomState createState() => _NavigationBarCustomState();
}

class _NavigationBarCustomState extends State<NavigationBarCustom> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomePage(), AboutPage(), SetUpPage()];

  void selectedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Layout.primaryColor(),
          fixedColor: Colors.white,
          onTap: selectedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list), label: 'Produtos'),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: 'Configurações')
          ]),
    );
  }
}
