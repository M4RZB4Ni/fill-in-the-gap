import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:fill_in_the_gap/features/question/domain/controllers/questions_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class APPQuestionBody extends StatefulWidget {
  const APPQuestionBody({super.key, required this.questionText, required this.fileName, required this.controller});

  /// question text as String
  final String questionText;

  /// fileName text as String
  final String fileName;

  /// questionController for pass logic
  final QuestionsController controller;

  @override
  State<StatefulWidget> createState() {
    return APPQuestionBodyState();
  }
}

class APPQuestionBodyState extends State<APPQuestionBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.questionText,
          style: AppTextStyles.paragraph,
        ),
        SizedBox(
          height: AppSize.s32.h,
        ),
        Container(
          color: AppColors.grey200,
          width: MediaQuery.of(context).size.width,
          height: AppSize.s118.h,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: AppSpacing.s11Top24Horizontal7Bottom,
              child: Text(widget.fileName,style: AppTextStyles.paragraph,),
            ),
            Divider(color: AppColors.grayItems,thickness:AppSize.s01.h,),



          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: AppSize.s45.h,
                  child: Obx(() => Padding(
                    padding: AppSpacing.s24Left24Top,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.controller.visualItems,
                    ),
                  ))),
             /* SizedBox(
                  height: 100,
                  width: double.maxFinite,
                  child: Obx(() => ListView.builder(
                    itemCount: widget.controller.interactionList.length,
                    itemBuilder: (context, index) => Expanded(
                      child: Container(
                          color: AppColors.primary,
                          // width: 80,
                          // height: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Text(widget.controller.interactionList[index]),
                              onTap: () => widget.controller.findItemsAreBlank(
                                  widget.controller.interactionList[index]),
                            ),
                          )),
                    ),
                    scrollDirection: Axis.horizontal,
                  ))),*/
        ])
      ],
    ))]);
  }
}
