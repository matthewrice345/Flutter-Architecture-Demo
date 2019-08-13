
import 'package:flutter/widgets.dart';

class Strings {
  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  String get appName => "Architecture Demo";

  String get photoLoadError => "Photos failed to load, kinda crummy :(";
}

class DemoLocalizationsDelegate extends LocalizationsDelegate<Strings> {

  @override
  Future<Strings> load(Locale locale) => Future(() => Strings());

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);
}