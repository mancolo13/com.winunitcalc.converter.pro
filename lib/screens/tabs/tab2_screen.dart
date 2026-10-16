import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final rates = [
      {'p': 'USD / EUR', 'r': '0.9240', 'c': '+0.12%'},
      {'p': 'USD / GBP', 'r': '0.7680', 'c': '-0.08%'},
      {'p': 'USD / JPY', 'r': '149.80', 'c': '+0.45%'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Currency Exchange')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: rates.length,
        itemBuilder: (context, i) {
          final r = rates[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(r['p']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(r['r']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(r['c']!, style: const TextStyle(color: AppTheme.secondaryColor, fontSize: 12)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

