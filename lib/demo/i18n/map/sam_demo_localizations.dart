import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class SamDemoLocalizations {
  final Locale locale;

  SamDemoLocalizations(this.locale);

  static SamDemoLocalizations of(BuildContext context) {
    return Localizations.of<SamDemoLocalizations>(
      context,
      SamDemoLocalizations
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello'
    },
    'zh': {
      'title': '您好'
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class SamDemoLocalizationsDelegate extends LocalizationsDelegate<SamDemoLocalizations> {
  SamDemoLocalizationsDelegate();

  @override
    Future<SamDemoLocalizations> load(Locale locale) {
      // TODO: implement load
      return SynchronousFuture<SamDemoLocalizations>(
        SamDemoLocalizations(locale)
      );
    }
  
  @override
    bool isSupported(Locale locale) {
      // TODO: implement isSupported
      return true;
    }

  @override
    bool shouldReload(LocalizationsDelegate<SamDemoLocalizations> old) {
      // TODO: implement shouldReload
      return false;
    }
}