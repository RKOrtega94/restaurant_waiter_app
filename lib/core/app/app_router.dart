import 'package:flutter/widgets.dart';
import 'package:restaurant_waiter_app/features/auth/presentation/screens/login_screen.dart';

/// App Router
///
/// This class is responsible for managing the app routes.
class AppRouter {
  static const String login = LoginScreen.route;

  static Map<String, Widget Function(BuildContext)> routes = {
    login: (_) => const LoginScreen(),
  };
}
