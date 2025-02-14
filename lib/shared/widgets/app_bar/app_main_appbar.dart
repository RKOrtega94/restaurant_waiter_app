import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Main App Bar
///
/// This is the main app bar of the application which will be used to display the
/// main app bar of the application.
///
/// This widget is used in the main layout of the application.
class AppMainAppbar extends ConsumerWidget {
  const AppMainAppbar({
    required this.scaffoldKey,
    super.key,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      snap: true,
      pinned: true,
      floating: true,
      titleSpacing: 0,
      centerTitle: false,
      title: const Text('Restaurant Waiter App'),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
    );
  }
}
