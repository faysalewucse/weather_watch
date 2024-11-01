import 'package:dio/dio.dart';
import 'package:weather_watch/utils/api/api_urls.dart';
import 'package:weather_watch/utils/api/config.dart';

class WeatherService {
  static Future<Response> getWeather(
      {required double lat, required double long}) async {
    return await Api().dio.get(AppUrls.baseUrl, queryParameters: {
      "latitude": lat,
      "longitude": long,
      "current": "temperature_2m,wind_speed_10m,relative_humidity_2m",
      "hourly": "temperature_2m",
      "daily": "temperature_2m_max,temperature_2m_min"
    });
  }
}
