import 'package:flutter/material.dart';
import 'package:weather_watch/view/screens/home/widgets/weather_condition_card.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';
import 'package:weather_watch/utils/constants/sizes.dart';

class WeatherConditions extends StatelessWidget {
  const WeatherConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.screenAllPadding,
      child: Column(
        children: [
          const WeatherConditionCard(
              image: AppImages.rainFall, title: "RainFall", value: "3cm"),
          12.verticalSpace,
          const WeatherConditionCard(
              image: AppImages.wind, title: "Wind", value: "19km/h"),
          12.verticalSpace,
          const WeatherConditionCard(
              image: AppImages.humidity, title: "Humidity", value: "64%")
        ],
      ),
    );
  }
}
