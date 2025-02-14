import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

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
            spacing: AppSizes.spacingMedium,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Placeholder(),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
