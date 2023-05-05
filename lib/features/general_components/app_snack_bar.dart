import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class APPSnackBar {
  void snackBar({
    required String title,
    required String message,
    int duration = 4,
  }) {
    Get.snackbar(
      '',
      '',
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.TOP,
      titleText: titleWidget(title: title),
      messageText: messageWidget(message: message),
      margin: AppSpacing.s20All,
      padding: AppSpacing.s20H12V,
      barBlur: 15,
      backgroundColor: AppColors.pureBlack.withOpacity(0.2),
    );
  }

  Widget titleWidget({required String title}) {
    return Text(
      title,
      style: AppTextStyles.body,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget messageWidget({required String message}) {
    return Text(
      message,
      style: AppTextStyles.body,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

}