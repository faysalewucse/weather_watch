import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_watch/view/widgets/circular_ripple_effect_button.dart';
import 'package:weather_watch/utils/constants/image_strings.dart';
import 'package:weather_watch/utils/constants/sizes.dart';
import 'package:weather_watch/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/app_colors.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  final controller =
      PageController(viewportFraction: 0.5, keepPage: true, initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.appBarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // -- Menu icon
          CircularRippleEffectButton(
            child: SvgPicture.asset(
              HelperFunctions.isDarkMode(context)
                  ? AppImages.menuIconDark
                  : AppImages.menuIconLight,
              height: 30,
              width: 30,
            ),
            onTap: () {},
          ),

          // -- page indicator
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.dark, dotHeight: 8, dotWidth: 8),
              onDotClicked: (index) {}),

          // -- light and dark mode icon
          IconButton(
              onPressed: () {},
              icon: Icon(
                PhosphorIcons.moon(PhosphorIconsStyle.bold),
                size: 25,
              ))
        ],
      ),
    );
  }
}
