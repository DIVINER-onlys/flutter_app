import 'package:flutter/material.dart';
import 'package:flutter_app/demo/i18n/map/sam_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text('I18nDemo'), elevation: 0.0,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${locale.languageCode}  ${locale.toString()}'),
            Text(
              // Localizations.of(context, SamDemoLocalizations).title,
              SamDemoLocalizations.of(context).title,
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}