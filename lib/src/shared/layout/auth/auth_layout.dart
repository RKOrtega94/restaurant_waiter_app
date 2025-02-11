import 'package:flutter/material.dart';

/// Auth Layout
///
/// This layout is used for the authentication screens.
class AuthLayout extends StatelessWidget {
  const AuthLayout({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.sizeOf(context).width > 600
              ? 600
              : MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).width > 600
              ? null
              : MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              if (MediaQuery.sizeOf(context).width > 600)
                BoxShadow(
                  color: Theme.of(context).shadowColor.withAlpha(150),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
