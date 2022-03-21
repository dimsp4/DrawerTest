import 'package:flutter/material.dart';
import './home.dart';

class SettingPage extends StatelessWidget {
  static const namaRoutes = '/setting';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
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
                onTap: () {
                  Navigator.of(context).pushNamed(HomePage.namaRoutes);
                },
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
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
