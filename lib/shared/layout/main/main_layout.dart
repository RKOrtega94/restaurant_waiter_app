import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_waiter_app/shared/widgets/app_bar/app_main_appbar.dart';
import 'package:restaurant_waiter_app/shared/widgets/side_nav/app_side_nav.dart';

/// Main layout
///
/// This is the main layout of the application which will be used to wrap the
/// main content of the application.
///
/// - [child] - The child widget to be displayed in the main layout.
class MainLayout extends ConsumerWidget {
  const MainLayout({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const AppSideNav(),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppMainAppbar(
            scaffoldKey: scaffoldKey,
          ),
        ],
        body: CustomScrollView(
          slivers: [
            /* AppMainAppbar(
              scaffoldKey: scaffoldKey,
            ), */
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Placeholder(),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
