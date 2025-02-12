import 'package:flutter/material.dart';

/// Main layout
///
/// This is the main layout of the application which will be used to wrap the
/// main content of the application.
class MainLayout extends StatelessWidget {
  const MainLayout({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
    );
  }
}
