import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/shared/layout/main/main_layout.dart';

/// DashboardScreen
///
/// {@category Features}
/// {@subCategory Dashboard}
///
/// DashboardScreen is a StatelessWidget that displays the dashboard screen.
class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Row(
        spacing: 5,
        children: [
          NavigationRail(
            backgroundColor: Theme.of(context).colorScheme.surface,
            extended: true,
            elevation: 8,
            indicatorColor: Colors.transparent,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/23533486?v=4',
                ),
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.restaurant),
                label: Text('Orders'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
            selectedIndex: 0,
            onDestinationSelected: (int index) {},
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  leading: Icon(Icons.menu),
                ),
                SliverFillViewport(
                  delegate: SliverChildListDelegate(
                    [
                      const Placeholder(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
