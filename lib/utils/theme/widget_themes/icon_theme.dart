import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class CustomIconTheme {
  CustomIconTheme._();

  static IconThemeData lightIconTheme =
      const IconThemeData(color: AppColors.black);
  static IconThemeData dartIconTheme =
      const IconThemeData(color: AppColors.white);
}
