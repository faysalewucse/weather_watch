import 'package:flutter/material.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/view/screens/home/widgets/hourly_temp_card.dart';

class HourlyTemperatures extends StatelessWidget {
  const HourlyTemperatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => const HourlyTemperatureCard(),
        separatorBuilder: (_, index) => 12.horizontalSpace,
        itemCount: 10,
      ),
    );
  }
}
