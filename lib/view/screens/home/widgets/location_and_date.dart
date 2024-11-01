import 'package:flutter/material.dart';
import 'package:weather_watch/controller/global_controller.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/formatters/formatter.dart';

class LocationAndDate extends StatelessWidget {
  LocationAndDate({super.key});

  final globalController = GlobalController.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -- current location
          Text(
            "${globalController.locality}, ${globalController.subLocality}",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          6.verticalSpace,
          // -- current date
          Text(
            InputFormatters.formatDate(DateTime.now()),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textSecondary, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
