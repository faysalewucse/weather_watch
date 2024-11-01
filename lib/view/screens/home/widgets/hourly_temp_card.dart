import 'package:flutter/material.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/view/screens/home/widgets/temperature_widget.dart';

class HourlyTemperatureCard extends StatelessWidget {
  const HourlyTemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.cardAllPadding,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: AppSizes.circularBorderRadius50
      ),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("13:00"),
          Image.asset(AppImages.rainyWithCloudy, height: 40, width: 40,),
          const TemperatureWidget(temperature: 19, fontSize: 14, unit: "°",),
        ],
      ),
    );
  }
}
