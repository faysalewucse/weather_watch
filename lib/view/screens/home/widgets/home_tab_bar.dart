import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:weather_watch/utils/constants/app_colors.dart';
import 'package:weather_watch/utils/constants/extensions.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/view/screens/home/controllers/home_controller.dart';

class HomeTabBar extends StatelessWidget {
  HomeTabBar({super.key});

  final homeController = HomeController.instance;

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
                  Obx(
                    () => GestureDetector(
                      onTap: () => homeController.tabBarIndex.value = 0,
                      child: Text(
                        "Today",
                        style: homeController.tabBarIndex.value == 0
                            ? tabBarActiveTitleStyle
                            : tabBarTitleStyle,
                      ),
                    ),
                  ),
                  20.horizontalSpace,
                  Obx(
                    () => GestureDetector(
                      onTap: () => homeController.tabBarIndex.value = 1,
                      child: Text(
                        "Next 7 Days",
                        style: homeController.tabBarIndex.value == 1
                            ? tabBarActiveTitleStyle
                            : tabBarTitleStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("View More", style: tabBarTitleStyle),
                  12.horizontalSpace,
                  Icon(
                    PhosphorIcons.caretRight(PhosphorIconsStyle.bold),
                    size: 15,
                    color: tabBarTitleStyle?.color,
                  )
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
              Obx(
                () => Positioned.fill(
                  left: homeController.tabBarIndex.value == 0 ? 15 : 102,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 5,
                      width: 20,
                      decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: AppSizes.circularBorderRadius10),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
