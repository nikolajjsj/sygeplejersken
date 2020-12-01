import 'package:sygeplejersken/models/theme_model.dart';

/// A list of [Theme]s
final List<AppTheme> predefinedThemes = <AppTheme>[
  AppTheme.fromData(light),
  AppTheme.fromData(amoled),
  AppTheme.fromData(pastel),
  AppTheme.fromData(darkRed),
  AppTheme.fromData(minimalist),
];

final AppThemeModel light = AppThemeModel()
  ..name = 'Light'
  ..primaryColour = 0xfff5f5f5
  ..accentColor = 0xff333333;

final AppThemeModel amoled = AppThemeModel()
  ..name = 'Amoled'
  ..primaryColour = 0xff000000
  ..accentColor = 0xffffffff;

final AppThemeModel pastel = AppThemeModel()
  ..name = 'Pastel'
  ..primaryColour = 0xffe6ebff
  ..accentColor = 0xffff89ff;

final AppThemeModel darkRed = AppThemeModel()
  ..name = 'Darkest Red'
  ..primaryColour = 0xff121212
  ..accentColor = 0xffb20000;

final AppThemeModel minimalist = AppThemeModel()
  ..name = 'Minimalist'
  ..primaryColour = 0xff293345
  ..accentColor = 0xfff95f7f;
