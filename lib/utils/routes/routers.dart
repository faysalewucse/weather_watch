import 'package:get/get.dart';
import 'package:weather_watch/view/screens/home/home_screen.dart';
import 'package:weather_watch/utils/routes/routes.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: AppRoutes.home, page: () => const HomeScreen())
];