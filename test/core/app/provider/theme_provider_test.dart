import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/theme_provider.dart';

void main() {
  group('ThemesTest', () {
    test('Initial theme should be system', () {
      final container = ProviderContainer();
      final theme = container.read(themesProvider);
      expect(theme, ThemeMode.system);
    });
  });

  test('Change theme should update the theme', () {
    final container = ProviderContainer();
    final notifier = container.read(themesProvider.notifier);
    notifier.changeTheme(true);
    final theme = container.read(themesProvider);
    expect(theme, ThemeMode.dark);
  });
}
