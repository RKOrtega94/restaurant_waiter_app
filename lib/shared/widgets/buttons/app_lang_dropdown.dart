import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/lang_provider.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/shared/widgets/buttons/app_dropdown_button.dart';

/// A dropdown button to change the app language.
///
/// This widget uses the [AppDropdownButton] widget to create a dropdown button
/// that allows the user to change the app language. The dropdown button will
/// display the current app language and a list of supported languages. When the
/// user selects a language, the app language will be changed accordingly.
///
/// This widget uses the [ConsumerWidget] class provided by the Riverpod package
/// to listen to changes in the app language state and update the UI accordingly.
///
/// Usage:
/// ```dart
/// const AppLangDropdown()
/// ```
class AppLangDropdown extends ConsumerWidget {
  const AppLangDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppDropdownButton<Locale>(
      icon: Row(
        spacing: 5,
        children: [
          Icon(
            Icons.language,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          Text(
            AppLocalizations.of(context).localeName,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
      value: ref.watch(languageStateProvider),
      items: AppLocalizations.supportedLocales,
      label: (locale) => Text(locale.languageCode),
      onChanged: ref.read(languageStateProvider.notifier).changeLanguage,
    );
  }
}
