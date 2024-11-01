import 'package:get/get.dart';
import 'package:weather_watch/controller/global_controller.dart';
import 'package:weather_watch/controller/network_controller.dart';
import 'package:weather_watch/view_model/repositories/weather_repositories.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(WeatherRepository());
    Get.put(NetworkController());
    Get.put(GlobalController());
  }
}
