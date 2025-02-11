import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/src/core/app/app_router.dart';
import 'package:restaurant_waiter_app/src/core/app/theme/theme.dart';
import 'package:restaurant_waiter_app/src/core/app/provider/theme_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themesProvider);
    debugPrint('themeState: $themeState');
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      routes: AppRouter.routes,
      initialRoute: AppRouter.login,
      themeMode: themeState,
      theme: lightTheme(),
      darkTheme: darkTheme(),
    );
  }
}
