import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter/material.dart';

part 'theme_provider.g.dart';

@riverpod
class Themes extends _$Themes {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  void changeTheme(bool isOn) {
    state = isOn ? ThemeMode.dark : ThemeMode.light;
  }
}
