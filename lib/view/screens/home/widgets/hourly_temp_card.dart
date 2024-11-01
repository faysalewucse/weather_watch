import 'package:flutter/material.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/view/screens/home/home_helpers.dart';
import 'package:weather_watch/view/screens/home/widgets/temperature_text.dart';

class HourlyTemperatureCard extends StatelessWidget {
  final int index;
  final num temperature;
  final bool active;
  final bool daily;
  const HourlyTemperatureCard({super.key, required this.index, required this.temperature, required this.active, this.daily = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.cardAllPadding,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.white.withOpacity(0.3),
        borderRadius: AppSizes.circularBorderRadius50
      ),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(daily ? HomeHelpers.getDayFromIndex(index+1) : "$index:00"),
          Image.asset(AppImages.rainyWithCloudy, height: 40, width: 40,),
          TemperatureText(temperature: temperature, fontSize: 14, unit: "°",),
        ],
      ),
    );
  }
}
