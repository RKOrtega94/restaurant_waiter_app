import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// DashboardReportCard
///
/// {@category Features}
/// {@subCategory Dashboard}
///
/// DashboardReportCard is a StatelessWidget that displays the report card section of the dashboard.
///
/// This widget is used in the [DashboardScreen].
///
/// - [title] - The title of the report card.
/// - [value] - The value of the report card.
///
/// Example:
/// ```dart
/// DashboardReportCard(
///   title: 'Total Orders',
///   value: '10',
/// )
/// ```
class DashboardReportCard extends StatelessWidget {
  const DashboardReportCard({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          padding: const EdgeInsets.all(AppSizes.paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                title,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
              ),
              SizedBox(
                width: constraints.maxWidth,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AutoSizeText(
                    value,
                    style: Theme.of(context).textTheme.displayMedium,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
