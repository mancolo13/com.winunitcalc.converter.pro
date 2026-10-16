import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Unit Categories')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _categoryTile('Pressure (Bar, PSI, Pascal)'),
          _categoryTile('Energy & Power (Joules, Watts, Calorie)'),
          _categoryTile('Data Storage (Bytes, KB, MB, GB, TB)'),
        ],
      ),
    );
  }

  Widget _categoryTile(String name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}

