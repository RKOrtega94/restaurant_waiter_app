import 'dart:ui';

import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lang_provider.g.dart';

@riverpod
class LanguageState extends _$LanguageState {
  @override
  Locale build() {
    return AppLocalizations.supportedLocales.first;
  }

  void changeLanguage(Locale languageCode) {
    state = languageCode;
  }
}
