import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.swap_vert_outlined),
            selectedIcon: const Icon(Icons.swap_vert, color: AppTheme.primaryColor),
            label: 'Converter',
          ),
          NavigationDestination(
            icon: const Icon(Icons.currency_exchange_outlined),
            selectedIcon: const Icon(Icons.currency_exchange, color: AppTheme.primaryColor),
            label: 'Currency',
          ),
          NavigationDestination(
            icon: const Icon(Icons.straighten_outlined),
            selectedIcon: const Icon(Icons.straighten, color: AppTheme.primaryColor),
            label: 'Units',
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings, color: AppTheme.primaryColor),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
