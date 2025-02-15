import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/shared/widgets/side_nav/app_side_nav_item.dart';
import 'package:restaurant_waiter_app/shared/widgets/side_nav/app_side_nav_logo.dart';

class AppSideNav extends ConsumerWidget {
  const AppSideNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: AppSizes.drawerWidth,
      height: MediaQuery.sizeOf(context).height,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top,
            left: AppSizes.drawerPadding,
            right: AppSizes.drawerPadding,
            bottom: MediaQuery.paddingOf(context).bottom,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(AppSizes.inputRadius),
              bottomRight: Radius.circular(AppSizes.inputRadius),
            ),
          ),
          child: Column(
            spacing: AppSizes.spacingSmall,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppSideNavLogo(),
              AppSideNavItem(
                label: AppLocalizations.of(context).dashboard,
                icon: Icons.dashboard,
              ),
              AppSideNavItem(
                label: AppLocalizations.of(context).orders,
                icon: Icons.shopping_cart,
              ),
              AppSideNavItem(
                label: AppLocalizations.of(context).tables,
                icon: Icons.table_chart,
              ),
              AppSideNavItem(
                label: AppLocalizations.of(context).settings,
                icon: Icons.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
