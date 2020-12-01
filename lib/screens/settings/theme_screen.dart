import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sygeplejersken/misc/themes/bloc/theme_bloc.dart';
import 'package:sygeplejersken/widgets/theme_selection_grid.dart';

class ThemesScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return CupertinoPageRoute(builder: (context) => ThemesScreen());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text("Select your ♥️ theme")),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => Column(
          children: [
            SwitchListTile(
              title: Text('Follow system theme', style: textTheme.bodyText2),
              value: state.followSystem,
              onChanged: (val) => context
                  .read<ThemeBloc>()
                  .add(ChangeTheme(id: state.id, followSystem: val)),
            ),
            state.followSystem
                ? const SizedBox()
                : Expanded(child: const ThemeSelectionGrid()),
          ],
        ),
      ),
    );
  }
}
