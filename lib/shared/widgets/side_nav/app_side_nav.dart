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
    return Container(
      width: AppSizes.drawerWidth,
      height: MediaQuery.sizeOf(context).height,
      padding: EdgeInsets.all(
        MediaQuery.sizeOf(context).width > AppSizes.mobileBreakpoint
            ? AppSizes.spacingSmall
            : 0,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Material(
          elevation: 5,
          color: Theme.of(context).appBarTheme.backgroundColor,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(AppSizes.inputRadius),
            bottomRight: const Radius.circular(AppSizes.inputRadius),
            topLeft:
                MediaQuery.sizeOf(context).width > AppSizes.mobileBreakpoint
                    ? const Radius.circular(AppSizes.inputRadius)
                    : Radius.zero,
            bottomLeft:
                MediaQuery.sizeOf(context).width > AppSizes.mobileBreakpoint
                    ? const Radius.circular(AppSizes.inputRadius)
                    : Radius.zero,
          ),
          child: Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            padding: EdgeInsets.only(
              top: MediaQuery.paddingOf(context).top + AppSizes.spacingSmall,
              left: AppSizes.drawerPadding,
              right: AppSizes.drawerPadding,
              bottom: MediaQuery.paddingOf(context).bottom,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(AppSizes.inputRadius),
                bottomRight: const Radius.circular(AppSizes.inputRadius),
                topLeft:
                    MediaQuery.sizeOf(context).width > AppSizes.mobileBreakpoint
                        ? const Radius.circular(AppSizes.inputRadius)
                        : Radius.zero,
                bottomLeft:
                    MediaQuery.sizeOf(context).width > AppSizes.mobileBreakpoint
                        ? const Radius.circular(AppSizes.inputRadius)
                        : Radius.zero,
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
      ),
    );
  }
}
