import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/view/screens/home/home_helpers.dart';
import 'package:weather_watch/view/screens/home/widgets/temperature_text.dart';
import 'package:weather_watch/view_model/repositories/weather_repositories.dart';

class CurrentWeather extends StatelessWidget {
  CurrentWeather({super.key});

  final weatherRepo = WeatherRepository.instance;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      double temperature =
          weatherRepo.temperature.value.current?.temperature2m ?? 0.0;

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // -- Weather Image
          HomeHelpers.getWeatherIcon(
            temperature,
          ),
          20.horizontalSpace,
          // -- Weather Temperature
          Obx(
                () => weatherRepo.isWeatherLoading.isTrue
                ? const CircularProgressIndicator()
                : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TemperatureText(
                  temperature: temperature,
                ),
                // Weather Condition
                Text(
                  "-- ${HomeHelpers.getWeatherType(temperature)}",
                  // Display dynamic condition
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
