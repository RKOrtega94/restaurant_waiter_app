import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';
import 'package:restaurant_waiter_app/features/dashboard/presentation/components/dashboard_report_section.dart';
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
    return MainLayout(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          padding: const EdgeInsets.all(AppSizes.padding),
          child: const Column(
            children: [
              DashboardReportSection(),
            ],
          ),
        ),
      ),
    );
  }
}
