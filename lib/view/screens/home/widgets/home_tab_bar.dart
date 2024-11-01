import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/sizes.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabBarTitleStyle = Theme.of(context)
        .textTheme
        .titleSmall
        ?.copyWith(color: AppColors.secondary.withOpacity(0.5));

    final tabBarActiveTitleStyle = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.w600);

    return Padding(
      padding: AppSizes.screenAllPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Today",
                    style: tabBarActiveTitleStyle,
                  ),
                  20.horizontalSpace,
                  Text("Tomorrow", style: tabBarTitleStyle),
                ],
              ),
              Row(
                children: [
                  Text("Next 7 days", style: tabBarTitleStyle),
                  12.horizontalSpace,
                  Icon(PhosphorIcons.caretRight(PhosphorIconsStyle.bold), size: 15, color: tabBarTitleStyle?.color,)
                ],
              ),
            ],
          ),
          12.verticalSpace,
          Stack(
            children: [
              const Divider(
                color: AppColors.secondary,
              ),
              Positioned.fill(
                left: 15,
                  child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: AppSizes.circularBorderRadius10),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
