import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/lang_provider.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';

void main() {
  group('LanguageStateTest', () {
    test('Initial locale should be the first supported locale', () {
      final container = ProviderContainer();
      final languageState = container.read(languageStateProvider);

      expect(languageState, AppLocalizations.supportedLocales.first);
    });

    test('Change language should update the locale', () {
      final container = ProviderContainer();
      final notifier = container.read(languageStateProvider.notifier);
      final newLocal = AppLocalizations.supportedLocales.last;
      notifier.changeLanguage(newLocal);
      final languageState = container.read(languageStateProvider);
      expect(languageState, newLocal);
    });
  });
}
