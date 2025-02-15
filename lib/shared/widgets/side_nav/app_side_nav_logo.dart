import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_images.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// AppSideNavLogo
///
/// {@category Widgets}
/// {@subCategory SideNav}
///
/// AppSideNavLogo is a StatelessWidget that displays the logo of the application.
///
/// Example:
/// ```dart
/// AppSideNavLogo();
/// ```
class AppSideNavLogo extends StatelessWidget {
  const AppSideNavLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.paddingOf(context).top / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSizes.spacingMedium,
          children: [
            if (kIsWeb) const SizedBox(height: AppSizes.spacingMedium),
            Image.asset(
              AppImages.logo,
              width: MediaQuery.sizeOf(context).width * 0.1 > 50
                  ? 50
                  : MediaQuery.sizeOf(context).width * 0.1,
            ),
            Text(
              'Waiter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: AppSizes.spacingMedium,
            ),
          ],
        ),
      ],
    );
  }
}
