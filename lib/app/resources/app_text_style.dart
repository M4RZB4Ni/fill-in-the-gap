// ignore_for_file: avoid_classes_with_only_static_members

import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
//headers
  static final labelMedium = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Noto Sans Arabic',
    fontWeight: FontWeight.w600,
    color: AppColors.textMainColor,
  );

  static final paragraph = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Noto Sans Arabic',
    fontWeight: FontWeight.w500,
    color: AppColors.textMainColor,
  );

  static final labelSmall = TextStyle(
    fontSize: 13.sp,
    fontFamily: 'Noto Sans Arabic',
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondaryColor,
  );
  static final labelSmallDark = TextStyle(
    fontSize: 13.sp,
    fontFamily: 'Noto Sans Arabic',
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondaryColorDark,
  );
  static final body = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Consolas',
    fontWeight: FontWeight.w400,
    color: AppColors.textMainColor,
  );

  static final body1 = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Consolas',
    fontWeight: FontWeight.w400,
    color: AppColors.pureBlack,
  );






}
