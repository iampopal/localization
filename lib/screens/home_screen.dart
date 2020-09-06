import 'package:flutter/material.dart';
import 'package:localization/locale_text.dart';
import 'package:localization/setting_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText('localization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LocaleText('welcome', style: TextStyle(fontSize: 32)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SettingScreen()));
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}
