import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/shared/widgets/buttons/app_button.dart';

/// AppSideNavItem
///
/// {@category Widgets}
/// {@subCategory SideNav}
///
/// AppSideNavItem is a StatelessWidget that displays a side navigation item.
///
/// - [label] - The label of the side navigation item.
/// - [icon] - The icon of the side navigation item.
/// - [onPressed] - The function to be called when the side navigation item is pressed.
///
/// Example:
/// ```dart
/// AppSideNavItem(
///   label: 'Dashboard',
///   icon: Icons.dashboard,
///   onPressed: () => print('Dashboard'),
/// );
class AppSideNavItem extends StatelessWidget {
  const AppSideNavItem({
    required this.label,
    required this.icon,
    this.onPressed,
    super.key,
  });

  final String label;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: label,
      prefixIcon: Icon(icon),
      onPressed: onPressed,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}
