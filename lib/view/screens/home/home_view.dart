import 'package:flutter/material.dart';
import 'package:weather_watch/view/screens/home/controllers/home_controller.dart';
import 'package:weather_watch/view/screens/home/widgets/current_weather.dart';
import 'package:weather_watch/view/screens/home/widgets/home_app_bar.dart';
import 'package:weather_watch/view/screens/home/widgets/home_tab_bar.dart';
import 'package:weather_watch/view/screens/home/widgets/hourly_temperatures.dart';
import 'package:weather_watch/view/screens/home/widgets/location_and_date.dart';
import 'package:weather_watch/view/screens/home/widgets/weather_conditions.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/sizes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.primaryLinear,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -- header
            HomeAppBar(),
            // -- User Current Location and date
            LocationAndDate(),
            // -- Current Weather
            CurrentWeather(),
            // -- Weather Information's
            WeatherConditions(),
            // -- tab bar
            HomeTabBar(),
            // -- hourly temperature
            HourlyTemperatures(),
          ],
        ),
      ),
    );
  }
}
