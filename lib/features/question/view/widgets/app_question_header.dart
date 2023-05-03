import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_icons.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class APPQuestionHeader extends StatefulWidget{
  const APPQuestionHeader({super.key, this.likesCount=0, this.progressValue=0.0});

  @override
  State<StatefulWidget> createState() {
    return APPQuestionHeaderState();
  }
  /// likes count as int
  final int likesCount;

  /// likes count as int
  final double progressValue;
}

class APPQuestionHeaderState extends State<APPQuestionHeader>
{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.s24Horizontal,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppIcons.ASSET_HEART),
                const SizedBox(width: AppSize.s04,),
                Text(widget.likesCount.toString(),style: AppTextStyles.labelMedium.copyWith(color: AppColors.red),)
              ],
            ),
            SvgPicture.asset(AppIcons.ASSET_CLOSE),

          ],
        ),
        Padding(
           padding: AppSpacing.s28Top32Bottom,
           child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s10.r)),
              child: LinearProgressIndicator(value: widget.progressValue,color: AppColors.primary,backgroundColor: AppColors.grayItems)),
         ),
      ],),
    );
  }  
}