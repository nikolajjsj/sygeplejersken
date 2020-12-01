import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sygeplejersken/misc/themes/themes_list.dart';
import 'package:sygeplejersken/models/theme_model.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          id: 0,
          themeData: predefinedThemes[0].data,
          followSystem: true,
        ));

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    int themeId = json['theme'] as int;
    bool followSystem = json['followSystem'];
    return ThemeState(
      id: themeId,
      themeData: themes[themeId].data,
      followSystem: followSystem ?? true,
    );
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return {
      'theme': state.id,
      'followSystem': state.followSystem,
    };
  }

  List<AppTheme> themes = predefinedThemes;

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ChangeTheme) {
      yield ThemeState(
        id: event.id,
        themeData: themes[event.id].data,
        followSystem: event.followSystem ?? true,
      );
    }
  }
}
