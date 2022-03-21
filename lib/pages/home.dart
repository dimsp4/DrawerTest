import 'package:drawer/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const namaRoutes = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                height: 150,
                color: Colors.red,
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 30,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(SettingPage.namaRoutes);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
