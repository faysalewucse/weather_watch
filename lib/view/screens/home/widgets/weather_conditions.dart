import 'package:flutter/material.dart';
import 'package:weather_watch/models/current/current_temperature.dart';
import 'package:weather_watch/view/screens/home/widgets/weather_condition_card.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/view_model/repositories/weather_repositories.dart';

class WeatherConditions extends StatelessWidget {
  WeatherConditions({super.key});

  final weatherRepo = WeatherRepository.instance;

  @override
  Widget build(BuildContext context) {
    CurrentTemperature? currentTemperature = weatherRepo.temperature.value.current;

    return Padding(
      padding: AppSizes.screenAllPadding,
      child: Column(
        children: [
          WeatherConditionCard(
              image: AppImages.rainFall, title: "RainFall", value: "${currentTemperature?.rain ?? 0.0} mm"),
          12.verticalSpace,
          WeatherConditionCard(
              image: AppImages.wind, title: "Wind", value: "${currentTemperature?.windSpeed10m ?? 0.0} Km/h"),
          12.verticalSpace,
          WeatherConditionCard(
              image: AppImages.humidity, title: "Humidity", value: "${currentTemperature?.relativeHumidity2m ?? 0.0} %")
        ],
      ),
    );
  }
}
