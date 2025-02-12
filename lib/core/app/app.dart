import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/lang_provider.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/core/app/app_router.dart';
import 'package:restaurant_waiter_app/core/app/theme/theme.dart';
import 'package:restaurant_waiter_app/core/app/provider/theme_provider.dart';

/// {@category core}
/// {@category app}
///
/// The root widget of the application.
///
/// This widget is responsible for setting up the application theme, language,
/// and routing configuration. It uses the [ConsumerWidget] class provided by
/// the Riverpod package to listen to changes in the app theme and language
/// states and update the UI accordingly.
///
/// The [App] widget is the entry point of the application and is responsible for
/// setting up the application theme, language, and routing configuration. It
/// uses the [ConsumerWidget] class provided by the Riverpod package to listen
/// to changes in the app theme and language states and update the UI accordingly.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themesProvider);
    final localeState = ref.watch(languageStateProvider);
    return MaterialApp(
      locale: localeState,
      theme: lightTheme(),
      themeMode: themeState,
      darkTheme: darkTheme(),
      routes: AppRouter.routes,
      initialRoute: AppRouter.dashboard,
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
    );
  }
}
