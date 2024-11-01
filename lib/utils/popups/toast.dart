import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import '../constants/app_colors.dart';

class CustomToast {
  static void showToast({required String message, bool success = false}) {
    toastification.show(
      title: Text(success ? "Success" : "Error", style: TextStyle(color: success ? AppColors.dark : AppColors.white),),
      description: Text(message),
      foregroundColor: success ? AppColors.dark : AppColors.white,
      alignment: Alignment.bottomCenter,
      showProgressBar: false,
      style: ToastificationStyle.fillColored,
      type: success ? ToastificationType.success : ToastificationType.error,
      primaryColor: success ? AppColors.primary : AppColors.secondary,
      autoCloseDuration: const Duration(seconds: 5),
    );
  }

  static void showSuccessToast({required String message}) {
    showToast(message: message, success: true);
  }

  static void showErrorToast({required String message}) {
    showToast(message: message, success: false);
  }
}
