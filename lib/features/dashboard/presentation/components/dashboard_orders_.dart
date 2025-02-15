import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/features/orders/presentation/widgets/order_tile.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/shared/widgets/sections/app_section.dart';

/// DashboardOrders
///
/// {@category Features}
/// {@subCategory Dashboard}
///
/// DashboardOrders is a StatelessWidget that displays the orders section of the dashboard.
///
/// This widget is used in the [DashboardScreen].
class DashboardOrders extends StatelessWidget {
  const DashboardOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSection(
      title: AppLocalizations.of(context).orders,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const OrderTile(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 2,
        ),
        itemCount: 10,
      ),
    );
  }
}
