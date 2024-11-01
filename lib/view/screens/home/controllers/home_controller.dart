import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  // final WeatherRepository _weatherRepository = WeatherRepository();

  // Reactive variables
  // var weather = Rxn<WeatherModel>();
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  // Fetch weather data
  // Future<void> fetchWeather(String city) async {
  //   try {
  //     isLoading.value = true;
  //     errorMessage.value = '';
  //     weather.value = await _weatherRepository.getWeather(city);
  //   } catch (e) {
  //     errorMessage.value = 'Could not fetch weather data';
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }
}
