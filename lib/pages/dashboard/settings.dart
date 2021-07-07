import 'package:flutter/material.dart';
import 'package:prashantapp/widgets/account.dart/card_data.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CardData(
            title: "Dark Theme",
            value: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonWidget(
              title: "Log Out",
              hasBorder: false,
            ),
          )
        ],
      ),
    );
  }
}
