import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/src/core/app/app_router.dart';
import 'package:restaurant_waiter_app/src/core/app/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      routes: AppRouter.routes,
      initialRoute: AppRouter.login,
      themeMode: ThemeMode.system,
      theme: lightTheme(),
      darkTheme: darkTheme(),
    );
  }
}
