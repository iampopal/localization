import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:localization/utils/preference_utils.dart';

class LocaleWidget extends StatefulWidget {
  LocaleWidget({@required this.child, Key key}) : super(key: key);
  final Widget child;
  @override
  _LocaleWidgetState createState() => _LocaleWidgetState();
}

class _LocaleWidgetState extends State<LocaleWidget> {
  Locale locale;

  @override
  void initState() {
    super.initState();
    locale = PreferenceUtils.instance.locale;
  }

  changeLocale(String lng) {
    setState(() {
      PreferenceUtils.instance.setLocale(lng);
      this.locale = PreferenceUtils.instance.locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LocaleChanger(
      state: this,
      child: widget.child,
    );
  }
}

class LocaleChanger extends InheritedWidget {
  final _LocaleWidgetState state;

  LocaleChanger({
    this.state,
    @required Widget child,
  }) : super(child: child);

  static LocaleChanger of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocaleChanger>();
  }

  @override
  bool updateShouldNotify(LocaleChanger oldWidget) => true;
}
