import 'package:flutter/widgets.dart';
import 'package:restaurant_waiter_app/features/auth/presentation/screens/login_screen.dart';

/// App Router
///
/// This class is responsible for managing the app routes.
///
/// The routes are defined as static constants and the route map is defined as a static map.
class AppRouter {
  static const String login = LoginScreen.route;

  /// Routes
  ///
  /// A map of routes and their corresponding widgets.
  /// This map is used by the [MaterialApp] to define the app routes.
  static Map<String, Widget Function(BuildContext)> routes = {
    login: (_) => const LoginScreen(),
  };
}
