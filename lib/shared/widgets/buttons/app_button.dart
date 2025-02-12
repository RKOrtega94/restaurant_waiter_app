import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    this.onPressed,
    this.prefixIcon,
    this.suffixIcon,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            spacing: AppSizes.spacingSmall,
            mainAxisAlignment: MainAxisAlignment.center,
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
