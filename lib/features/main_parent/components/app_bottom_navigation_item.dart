import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class APPBottomNavigationItem extends StatelessWidget {
  const APPBottomNavigationItem({
    final Key? key,
    required this.label,
    this.icon,
    required this.selected,
    required this.index,
  }) : super(key: key);

  /// label for Item as String
  final String label;

  /// icon path for Item as String
  final String? icon;


  /// index of item for selected is require
  final int index;

  /// index of item for selected is require
  final int selected;

  @override
  Widget build(final BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null)
          SvgPicture.asset(
            icon!,
            color: index == selected ? AppColors.primaryLight : null,
          )
        else
          SizedBox(width: 25.r, height: 20.r),
        Padding(
          padding: AppSpacing.s9Top,
          child: Text(
            label,
            style: AppTextStyles.labelSmall
                .copyWith(color: index == selected ? AppColors.primaryLight : null),
          ),
        )
      ],
    );
  }
}
