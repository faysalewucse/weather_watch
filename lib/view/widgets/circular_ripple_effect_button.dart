import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_watch/utils/constants/sizes.dart';

class CircularRippleEffectButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const CircularRippleEffectButton(
      {super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
