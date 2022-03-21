import 'package:drawer/pages/home.dart';
import 'package:drawer/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BurgerDraw());
}

class BurgerDraw extends StatelessWidget {
  const BurgerDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        HomePage.namaRoutes: (context) => HomePage(),
        SettingPage.namaRoutes: (context) => SettingPage()
      }
    );
  }
}
