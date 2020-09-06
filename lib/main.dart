import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/data/locales.dart';
import 'package:localization/language_changer.dart';
import 'package:localization/screens/home_screen.dart';
import 'package:localization/utils/preference_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Future.wait([
    PreferenceUtils.init(),
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LocaleWidget(
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Localization Demo',
          localizationsDelegates: [
            Locales.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: Locales.supportedLocales,
          locale: LocaleChanger.of(context).state.locale,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomeScreen(),
        ),
      ),
    );
  }
}
