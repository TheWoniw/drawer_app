import 'package:drawer_app/pages/homepage.dart';
import 'package:drawer_app/pages/profilepage.dart';
import 'package:drawer_app/pages/settingspage.dart';
import 'package:drawer_app/variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
      },

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color,
        appBar: AppBar(
          backgroundColor: secondary_background_color,
          title: Text(
            "D R A W E R  A P P",
            style: TextStyle(color: text_icon_color),
          ),

          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu, size: 30, color: text_icon_color),
              );
            },
          ),
        ),

        drawer: Drawer(
          backgroundColor: secondary_background_color,
          child: Builder(
            builder: (BuildContext context) {
              return ListView(
                children: [
                  DrawerHeader(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "D R A W E R",
                          style: TextStyle(
                            color: text_icon_color,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    title: Text(
                      "H O M E",
                      style: TextStyle(color: text_icon_color, fontSize: 20),
                    ),

                    leading: Icon(Icons.home, size: 25, color: text_icon_color),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/settingspage');
                    },
                    title: Text(
                      "S E T T I N G S",
                      style: TextStyle(color: text_icon_color, fontSize: 20),
                    ),

                    leading: Icon(
                      Icons.settings,
                      size: 25,
                      color: text_icon_color,
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/profilepage');
                    },
                    title: Text(
                      "P R O F I L E ",
                      style: TextStyle(color: text_icon_color, fontSize: 20),
                    ),

                    leading: Icon(
                      Icons.person,
                      size: 25,
                      color: text_icon_color,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
