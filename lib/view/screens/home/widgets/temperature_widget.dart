import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  final int temperature;
  final String unit;
  final double fontSize;

  const TemperatureWidget({
    super.key,
    required this.temperature,
    this.unit = '° C', this.fontSize = 90, // Default to Celsius
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Temperature and Unit
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                '$temperature', // Display dynamic temperature
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: fontSize),
              ),
            ),
            Text(
              unit, // Display dynamic unit
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
