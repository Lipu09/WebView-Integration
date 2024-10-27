// lib/presentation/widgets/navigation_bar.dart

import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/webview_screen.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.web),
          label: 'WebView',
        ),
      ],
      onDestinationSelected: (index) {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WebViewScreen()),
          );
        }
      },
      selectedIndex: 0,  // Default to the first tab
    );
  }
}
