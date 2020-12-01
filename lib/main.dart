import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sygeplejersken/misc/themes/bloc/theme_bloc.dart';
import 'package:sygeplejersken/misc/themes/themes_list.dart';
import 'package:sygeplejersken/misc/tool_list.dart';
import 'package:sygeplejersken/screens/settings/settings_screen.dart';
import 'package:sygeplejersken/widgets/tool_card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final lightTheme = predefinedThemes[0].data;
          final darkTheme = predefinedThemes[1].data;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sygeplejersken',
            theme: state.followSystem ? lightTheme : state.themeData,
            darkTheme: state.followSystem ? darkTheme : state.themeData,
            themeMode: state.followSystem ? ThemeMode.system : null,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sygeplejersken'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.of(context).push(SettingsScreen.route()),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final _tool = tools[index];

          return ToolCard(
            title: _tool.title,
            imageAsset: _tool.imageAsset,
          );
        },
      ),
    );
  }
}
