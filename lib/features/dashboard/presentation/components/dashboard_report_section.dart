import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';
import 'package:restaurant_waiter_app/features/dashboard/presentation/components/dashboard_report_card.dart';

/// DashboardReportSection
///
/// {@category Features}
/// {@subCategory Dashboard}
///
/// DashboardReportSection is a StatelessWidget that displays the report section of the dashboard.
class DashboardReportSection extends StatelessWidget {
  const DashboardReportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.sizeOf(context).width > 600 ? 4 : 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.01,
        mainAxisSpacing: MediaQuery.sizeOf(context).width * 0.01,
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingSmall),
      children: [
        const DashboardReportCard(
          title: 'Total Orders',
          value: '12',
        ),
        const DashboardReportCard(
          title: 'Total Sales',
          value: '120,000',
        ),
        const DashboardReportCard(
          title: 'Total Customers',
          value: '120',
        ),
        const DashboardReportCard(
          title: 'Total Items',
          value: '120',
        ),
      ],
    );
  }
}
