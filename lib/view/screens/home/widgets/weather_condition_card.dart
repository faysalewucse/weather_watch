import 'package:flutter/material.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/sizes.dart';

class WeatherConditionCard extends StatelessWidget {
  final String image;
  final String title;
  final String value;
  const WeatherConditionCard({super.key, required this.image, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.cardAllPadding,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.36),
        borderRadius: AppSizes.circularBorderRadius20,
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 0.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // -- icon
              Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: AppSizes.circularBorderRadius15
                  ),
                  child: Image.asset(image)),
              12.horizontalSpace,
              // -- title
              Text(title, style: Theme.of(context).textTheme.titleLarge,)
            ],
          ),
          // -- value
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(value),
          )
        ],
      ),
    );
  }
}
