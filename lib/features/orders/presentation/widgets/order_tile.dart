import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// OrderTile
///
/// {@category Orders}
/// {@subCategory Widgets}
///
/// OrderTile is a StatelessWidget that displays the order tile.
class OrderTile extends StatelessWidget {
  const OrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: const Padding(
        padding: EdgeInsets.all(
          AppSizes.paddingSmall,
        ),
        child: Text('Order Tile'),
      ),
    );
  }
}
