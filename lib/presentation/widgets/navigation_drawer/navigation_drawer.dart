import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(child: Center(child: Text('Responsive Demo'))),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text('My Team'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}
