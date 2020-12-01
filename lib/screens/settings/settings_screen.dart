import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sygeplejersken/screens/settings/theme_screen.dart';

class SettingsScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return CupertinoPageRoute(builder: (context) => SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text('Indstillinger'), centerTitle: true),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.format_paint_rounded),
            title: Text('Temaer', style: textTheme.bodyText2),
            subtitle: Text('Vælg farve tema'),
            onTap: () => Navigator.of(context).push(ThemesScreen.route()),
          )
        ],
      ),
    );
  }
}
