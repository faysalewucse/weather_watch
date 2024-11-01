import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_watch/controller/global_controller.dart';
import 'package:weather_watch/view/screens/home/controllers/home_controller.dart';
import 'package:weather_watch/view/screens/home/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    final globalController = GlobalController.instance;

    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globalController.isLoadingCurrentLocation.isTrue
              ? const Center(child: CircularProgressIndicator())
              : const HomeView(),
        ),
      ),
    );
  }
}
