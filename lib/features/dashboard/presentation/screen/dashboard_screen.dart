import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';
import 'package:restaurant_waiter_app/features/dashboard/presentation/components/dashboard_orders_.dart';
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
        builder: (context, constraints) => Column(
          spacing: AppSizes.spacingMedium,
          children: [
            const DashboardReportSection(),
            MasonryGridView.custom(
              shrinkWrap: true,
              crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.01,
              mainAxisSpacing: MediaQuery.sizeOf(context).width * 0.02,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.sizeOf(context).width > 600 ? 3 : 1,
              ),
              childrenDelegate: SliverChildListDelegate(
                [
                  const DashboardOrders(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
