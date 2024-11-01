import 'package:get/get.dart';
import 'package:weather_watch/models/temperature/temperature.dart';
import 'package:weather_watch/view_model/service/weather_service.dart';

class WeatherRepository extends GetxController {
  static WeatherRepository get instance => Get.find();

  final isWeatherLoading = true.obs;
  final temperature = const Temperature().obs;

  Future<void> getCurrentWeather(
      {required double lat, required double long}) async {
    try {
      final response = await WeatherService.getWeather(lat: lat, long: long);
      temperature(Temperature.fromJson(response.data));
    } catch (e) {
      temperature(const Temperature());
    } finally {
      isWeatherLoading.value = false;
    }
  }
}
