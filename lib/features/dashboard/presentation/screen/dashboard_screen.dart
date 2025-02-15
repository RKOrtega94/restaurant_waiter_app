import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/shared/layout/main/main_layout.dart';

/// DashboardScreen
///
/// {@category Features}
/// {@subCategory Dashboard}
///
/// DashboardScreen is a StatelessWidget that displays the dashboard screen.
class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: Center(
        child: Text('Dashboard Screen'),
      ),
    );
  }
}
