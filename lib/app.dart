import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:weather_watch/bindings/initial_bindings.dart';
import 'package:weather_watch/utils/constants/text_strings.dart';
import 'package:weather_watch/utils/routes/routers.dart';
import 'package:weather_watch/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppTexts.appName,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
