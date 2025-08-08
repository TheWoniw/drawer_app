import 'package:drawer_app/variables.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        backgroundColor: secondary_background_color,
        title: Text(
          "S E T T I N G S  P A G E",
          style: TextStyle(color: text_icon_color),
        ),

        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: text_icon_color,
            size: 20,
          ),
        ),
      ),
    );
  }
}
