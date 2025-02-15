import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/app/theme/button_styles.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// App Button
///
/// A custom button widget.
///
/// - [label] is the button text.
/// - [onPressed] is the button action.
/// - [prefixIcon] is the icon before the button text.
/// - [suffixIcon] is the icon after the button text.
///
/// Example:
/// ```dart
/// AppButton(
///   label: 'Sign In',
///   onPressed: () => print('Sign In'),
///   prefixIcon: Icon(Icons.login),
/// );
/// ```
class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    this.onPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.mainAxisAlignment = MainAxisAlignment.center,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        child: ElevatedButton(
          onPressed: onPressed,
          style: AppButtonStyle.getStyle(
            context,
            // TODO: Add button type with selected or current route
            ButtonType.ghost,
          ),
          child: Row(
            spacing: AppSizes.spacingSmall,
            mainAxisAlignment: mainAxisAlignment,
            children: [
              if (prefixIcon != null) prefixIcon!,
              Text(label),
              if (suffixIcon != null) suffixIcon!,
            ],
          ),
        ),
      ),
    );
  }
}
