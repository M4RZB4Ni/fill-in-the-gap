import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:flutter/cupertino.dart';

class APPGrayBox extends StatelessWidget{
  const APPGrayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s22,
      margin: AppSpacing.s2Horizontal,
      decoration: BoxDecoration(
          color: AppColors.grey200,
          borderRadius: BorderRadius.circular(AppSize.s02)),
    );
  }


}