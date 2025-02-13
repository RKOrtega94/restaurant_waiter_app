import 'package:flutter/material.dart';

/// Main layout
///
/// This is the main layout of the application which will be used to wrap the
/// main content of the application.
///
/// - [child] - The child widget to be displayed in the main layout.
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
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          spacing: 10,
          children: [
            NavigationRail(
              backgroundColor: Theme.of(context).colorScheme.surface,
              extended: true,
              elevation: 8,
              indicatorColor: Colors.transparent,
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              selectedIconTheme: const IconThemeData(color: Colors.blue),
              selectedLabelTextStyle: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
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
            const Expanded(child: Placeholder())
          ],
        ),
      ),
    );
  }
}
