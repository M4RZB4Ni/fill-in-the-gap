import 'package:fill_in_the_gap/app/base/base_view.dart';
import 'package:fill_in_the_gap/features/question/domain/controllers/questions_controller.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_body.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_bottom.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_question_header.dart';
import 'package:flutter/material.dart';

class QuestionsPage extends BaseView<QuestionsController> {
  QuestionsPage({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const APPQuestionHeader(progressValue: 0.5, likesCount: 4),
            APPQuestionBody(
                questionText:
                    'ماهي اللغة التي سوف نستخدمها لبرمجة أساس المشروع؟',
                fileName: 'index.html',
                controller: controller),
          ],
        ),
        APPQuestionBottom(
          interactionList: controller.interactionList,
          onTabAnswers: (p0) =>
              controller.findItemsAreBlank(p0),
          onTabClean: () => controller.ctrlZ(),
        )
      ],
    );
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     SizedBox(
    //         height: 200,
    //         child: Obx(() => ListView(
    //               scrollDirection: Axis.horizontal,
    //               children: controller.visualItems,
    //             ))),
    //     SizedBox(
    //         height: 100,
    //         width: double.maxFinite,
    //         child: Obx(() => ListView.builder(
    //               itemCount: controller.interactionList.length,
    //               itemBuilder: (context, index) => Container(
    //                   color: AppColors.primary,
    //                   width: 80,
    //                   height: 30,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: GestureDetector(
    //                       child: Text(controller.interactionList[index]),
    //                       onTap: () => controller.findItemsAreBlank(
    //                           controller.interactionList[index]),
    //                     ),
    //                   )),
    //               scrollDirection: Axis.horizontal,
    //             ))),
    //   Container(color: AppColors.secondaryDark,child: GestureDetector(onTap: () => controller.ctrlZ(),child: Text("CTRLZ"),)),
    //   Container(color: AppColors.secondaryDark,child: GestureDetector(onTap: () => controller.checkAnswer(),child: Text("CHECK"),))
    //
    // ],
    // );
  }
}
