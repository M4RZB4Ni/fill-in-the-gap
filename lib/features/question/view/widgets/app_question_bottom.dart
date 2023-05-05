import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_icons.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/features/general_components/buttons/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class APPQuestionBottom extends StatefulWidget {
  const APPQuestionBottom({super.key, required this.interactionList, required this.onTabAnswers, required this.onTabClean, required this.onTabCheckResult, required this.onTabRestore});

  @override
  State<StatefulWidget> createState() {
    return APPQuestionBottomState();
  }


  /// list of interactions as List<String>
  final  RxList<String> interactionList;

  /// a function which accept int as parameter to pass the index of each item to handle on interaction items click
  final Function(int) onTabAnswers;

  /// a function which cleans all answers
  final Function() onTabClean;

  /// a function which check user result
  final Function() onTabCheckResult;

  /// restorePages
  final Function() onTabRestore;
}

class APPQuestionBottomState extends State<APPQuestionBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s135.h,
      decoration: const BoxDecoration(
        color: AppColors.pureWhite,
      ),
      child: Column(children: [
        Padding(
          padding: AppSpacing.s20All,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              APPCircleButton(onTab: () => widget.onTabCheckResult(),child: SvgPicture.asset(AppIcons.ASSET_PLAY),),
              Row(
                children: [
                  GestureDetector(child: SvgPicture.asset(AppIcons.ASSET_ROTATE),onTap: () => widget.onTabRestore(),),
                  SizedBox(
                    width: AppSize.s24.w,
                  ),
                  GestureDetector(child: Image.asset(AppIcons.ASSET_REMOVE),onTap: () => widget.onTabClean(),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
            height: AppSize.s20.h,
            width: double.maxFinite,
            child: Padding(
              padding: AppSpacing.s24Horizontal,
              child: Obx(() => ListView.builder(
                itemCount:
                widget.interactionList.length,
                itemBuilder: (context, index) => Container(
                    margin: AppSpacing.s13Right,
                    padding: AppSpacing.s8All,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s04.r),
                      color: AppColors.grey200,
                    ),
                    child: GestureDetector(
                      child: Text(widget.interactionList[index]),
                      onTap: () => widget.onTabAnswers(index),
                    )),
                scrollDirection: Axis.horizontal,
              )),
            ))
      ]),
    );
  }
}
