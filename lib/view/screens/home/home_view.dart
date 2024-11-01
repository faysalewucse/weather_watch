import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_watch/view/screens/home/controllers/home_controller.dart';
import 'package:weather_watch/view/screens/home/widgets/current_weather.dart';
import 'package:weather_watch/view/screens/home/widgets/home_app_bar.dart';
import 'package:weather_watch/view/screens/home/widgets/home_tab_bar.dart';
import 'package:weather_watch/view/screens/home/widgets/temperatures_carousel.dart';
import 'package:weather_watch/view/screens/home/widgets/location_and_date.dart';
import 'package:weather_watch/view/screens/home/widgets/weather_conditions.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/view_model/repositories/weather_repositories.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final weatherRepo = WeatherRepository.instance;
  final homeController = HomeController.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.primaryLinear,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -- header
          const HomeAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -- User Current Location and date
                  LocationAndDate(),
                  // -- Current Weather
                  CurrentWeather(),
                  // -- Weather Information's
                  WeatherConditions(),
                  // -- tab bar
                  HomeTabBar(),
                  // -- hourly temperature
                  Obx(
                    () => TemperatureCarousel(
                            daily: homeController.tabBarIndex.value == 1,
                            temperatures: homeController.tabBarIndex.value == 0
                                ? weatherRepo
                                    .temperature.value.hourly.temperature2m
                                    .take(24)
                                    .toList()
                                : weatherRepo
                                    .temperature.value.daily.temperature2mMax
                                    .take(24)
                                    .toList(),
                          ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
