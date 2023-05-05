import 'package:fill_in_the_gap/app/base/base_view.dart';
import 'package:fill_in_the_gap/app/messages/app_messages.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/features/question/domain/controllers/questions_controller.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_body.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_bottom.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionsPage extends BaseView<QuestionsController> {
  QuestionsPage({super.key});

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(height: AppSize.s20.h,),
            /// mock data
            const APPQuestionHeader(progressValue: 0.5, likesCount: 4),
            APPQuestionBody(
                questionText:AppMessage.mockQuestion,
                fileName: controller.fileName,
                visualItems: controller.visualItems),
          ],
        ),
        APPQuestionBottom(
          interactionList: controller.interactionList,
          onTabAnswers: (p0) => controller.findItemsAreBlank(p0),
          onTabClean: () => controller.ctrlZ(),
          onTabCheckResult:controller.checkAnswer , onTabRestore: () => controller.clearData(),
        )
      ],
    );
  }
}
