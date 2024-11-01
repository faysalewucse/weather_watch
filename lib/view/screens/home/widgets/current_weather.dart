import 'package:flutter/material.dart';
import 'package:weather_watch/view/screens/home/widgets/location_and_date.dart';
import 'package:weather_watch/view/screens/home/widgets/temperature_widget.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // -- Weather Image
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.rainyWithCloudy,
              scale: 2.5,
            ),
          ],
        ),
        20.horizontalSpace,
        // -- Weather Temperature
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TemperatureWidget(temperature: 19,),
            // Weather Condition
            Text(
              "-- Rainy", // Display dynamic condition
              style:Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
