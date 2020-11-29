import 'package:flutter/material.dart';
import 'package:venda/layout/layout.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(
            child: Column(
          children: [
            Text(
              'TG Store',
              style: TextStyle(
                  color: Layout.colorWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Quem Somos',
              style: TextStyle(
                  color: Layout.colorWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
      body: Container(
        child: Center(
          child: Text('About'),
        ),
      ),
    );
  }
}
