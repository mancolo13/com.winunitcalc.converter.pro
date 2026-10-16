import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  double _inputVal = 100;

  @override
  Widget build(BuildContext context) {
    final km = _inputVal;
    final miles = _inputVal * 0.621371;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • UnitCalc Pro'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calculate, color: AppTheme.secondaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.35), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.4)),
            ),
            child: Column(
              children: [
                const Text('DISTANCE CONVERSION', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('${km.toStringAsFixed(0)} KM', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                        const Text('Metric', style: TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                    const Icon(Icons.swap_horiz, size: 28, color: AppTheme.secondaryColor),
                    Column(
                      children: [
                        Text('${miles.toStringAsFixed(2)} MI', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppTheme.secondaryColor)),
                        const Text('Imperial', style: TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Adjust Value', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Slider(
            value: _inputVal,
            min: 1,
            max: 500,
            activeColor: AppTheme.primaryColor,
            onChanged: (v) => setState(() => _inputVal = v),
          ),
          const SizedBox(height: 16),
          _presetCard('Celsius to Fahrenheit', '25°C = 77.0°F'),
          _presetCard('Kilograms to Pounds', '80 kg = 176.37 lbs'),
          _presetCard('Litres to US Gallons', '50 L = 13.21 gal'),
        ],
      ),
    );
  }

  Widget _presetCard(String t, String v) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(t, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
          Text(v, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

