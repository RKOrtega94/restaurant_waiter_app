import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

class AppSection extends StatelessWidget {
  const AppSection({
    required this.child,
    this.title,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  final String? title;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSizes.spacingSmall,
        children: [
          if (title != null)
            Padding(
              padding: padding == EdgeInsets.zero
                  ? const EdgeInsets.symmetric(
                      horizontal: AppSizes.paddingSmall,
                    )
                  : padding,
              child: Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          child,
        ],
      ),
    );
  }
}
