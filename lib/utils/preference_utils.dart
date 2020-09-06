import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  SharedPreferences prefs;
  static PreferenceUtils instance;
  static Future init() async {
    PreferenceUtils.instance = PreferenceUtils();
    instance.prefs = await SharedPreferences.getInstance();
  }

  setLocale(String lng) {
    prefs.setString('language', lng);
  }

  Locale get locale => Locale(prefs.getString('language') ?? "en");
}
