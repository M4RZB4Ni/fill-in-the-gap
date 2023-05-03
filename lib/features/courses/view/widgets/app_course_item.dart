import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_icons.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class APPCourseItem extends StatelessWidget{
  const APPCourseItem({super.key, required this.title, required this.subTitle, required this.status, required this.onTab});

  ///Title as String
  final String title;

  ///Subtitle as String
  final String subTitle;

  ///Status as bool for checking enabled or not
  final bool status;

  ///Handle onTab by passing function
  final GestureTapCallback onTab;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: status ? onTab : null,
      child: Container(
        width: double.maxFinite,
        height: AppSize.s84.h,
        margin: AppSpacing.s16V24H.r,
        padding: AppSpacing.s16All.r,
        decoration: BoxDecoration(color: AppColors.pureWhite,borderRadius: BorderRadius.circular(AppSize.s08.r)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              status ? const CircularProgressIndicator(color: AppColors.primaryLight,value: 0.3):SvgPicture.asset(AppIcons.ASSET_LOCK),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,style: AppTextStyles.labelMedium,),
              Text(subTitle,style: AppTextStyles.labelSmall,)
            ],
          ),

        ]),
      ),
    );
  }

}