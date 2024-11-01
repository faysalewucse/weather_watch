import 'package:get/get.dart';
import 'package:weather_watch/controller/global_controller.dart';
import 'package:weather_watch/controller/network_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController());
    Get.put(GlobalController());
  }
}
