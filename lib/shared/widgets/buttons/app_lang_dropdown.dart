import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/lang_provider.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/shared/widgets/buttons/app_dropdown_button.dart';

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
