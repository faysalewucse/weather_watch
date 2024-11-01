import 'package:flutter/material.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';

class HomeHelpers{
  static String getDayFromIndex(int index) {
    DateTime targetDate = DateTime.now().add(Duration(days: index));
    List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
    return days[targetDate.weekday - 1];
  }

  static Widget getWeatherIcon(double temperature) {
    String iconPath;
    double scale = 0.8;

    if (temperature > 35) {
      iconPath = AppImages.sunny;
    } else if (temperature > 25) {
      iconPath = AppImages.partlyCloudy;
    } else if (temperature > 15) {
      iconPath = AppImages.cloudy;
    } else if (temperature > 10) {
      scale = 2.5;
      iconPath = AppImages.rainyWithCloudy;
    } else {
      iconPath = AppImages.rainy;
    }

    return Image.asset(
      iconPath,
      scale: scale,
    );
  }

  static String getWeatherType(double temperature) {
    if (temperature > 35) {
      return "Sunny";
    } else if (temperature > 25) {
      return "Partly Cloudy";
    } else if (temperature > 15) {
      return "Cloudy";
    } else if (temperature > 10) {
      return "Cloudy with rain";
    } else {
      return "Rainy";
    }
  }
}