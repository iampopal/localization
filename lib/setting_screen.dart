import 'package:flutter/material.dart';
import 'package:localization/language_changer.dart';
import 'package:localization/locale_text.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText('setting'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => LocaleChanger.of(context).state.changeLocale('en'),
            title: Text('English'),
          ),
          ListTile(
            onTap: () => LocaleChanger.of(context).state.changeLocale('ps'),
            title: Text('Pashto'),
          ),
          ListTile(
            onTap: () => LocaleChanger.of(context).state.changeLocale('fa'),
            title: Text('Farsi'),
          ),
        ],
      ),
    );
  }
}
