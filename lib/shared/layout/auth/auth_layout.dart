import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/core/app/provider/theme_provider.dart';
import 'package:restaurant_waiter_app/core/constants/app_sizes.dart';

/// Auth Layout
///
/// This layout is used for the authentication screens.
class AuthLayout extends ConsumerWidget {
  const AuthLayout({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themesProvider);
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Card(
              margin: const EdgeInsets.all(16),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(maxWidth: 400),
                child: child,
              ),
            ),
          ),
          Positioned(
            top: AppSizes.spacingSmall,
            right: AppSizes.spacingSmall,
            child: IconButton(
              onPressed: () => ref.read(themesProvider.notifier).changeTheme(
                    themeState == ThemeMode.dark ? false : true,
                  ),
              icon: Icon(
                themeState == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
