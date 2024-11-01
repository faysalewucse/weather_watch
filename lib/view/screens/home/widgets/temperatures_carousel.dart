import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weather_watch/view/screens/home/widgets/hourly_temp_card.dart';

class TemperatureCarousel extends StatelessWidget {
  final List<num> temperatures;
  final bool daily;

  const TemperatureCarousel({super.key, required this.temperatures, this.daily = false});

  int getCurrentHourIndex() {
    final currentHour =
        DateTime.now().hour; // get the current hour in 24-hour format
    return currentHour;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: CarouselSlider.builder(
        itemCount: temperatures.length,
        itemBuilder: (context, index, realIndex) {
          num temp = temperatures[index];
          return SizedBox(
            height: 120,
            width: 70, // Fixed height for each item
            child: HourlyTemperatureCard(
              temperature: temp,
              index: index,
              active: getCurrentHourIndex() == index,
              daily: daily,
            ),
          );
        },
        options: CarouselOptions(
          height: 140,
          initialPage: getCurrentHourIndex(),
          enableInfiniteScroll: false,
          viewportFraction: 0.2,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
