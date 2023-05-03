import 'package:fill_in_the_gap/app/base/base_controller.dart';
import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuestionsController extends BaseController {
  String test = '<div> Orchestrator calculate orchid Specialist EXE </div>';
  late List<String> list;
   RxList<String> interactionList = [
    'Orchestrator',
    'Specialist',
    'calculate',
  ].obs;

   late List<List<dynamic>> deletedItem=[];
   late List<int> deleteVisualIndex=List.empty(growable: true);
   late List<int> deleteLogicIndex=List.empty(growable: true);


   RxList<Widget> visualItems=List<Widget>.empty(growable: false).obs;
   RxList<String> logicItems=List<String>.empty(growable: false).obs;

  @override
  void onInit() {
    showLoading();
    list = test.split(' ');
    processQuestion();
    hideLoading();
    super.onInit();
  }

  void findItemsAreBlank(int index)
  {
    var item=interactionList[index];
    deletedItem.add([interactionList.indexOf(item),item]);
    logicItems.insert(visualItems.indexWhere((element) => element is Expanded),item);

    deleteVisualIndex.add(visualItems.indexWhere((element) => element is Expanded));
    deleteLogicIndex.add(visualItems.indexWhere((element) => element is Expanded));
    visualItems[visualItems.indexWhere((element) => element is Expanded)] = Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(decoration: BoxDecoration(
          color: AppColors.grayItems,
          borderRadius: BorderRadius.circular(AppSize.s02)), child: Text(item,style: AppTextStyles.body1,)),
    );

    interactionList.removeAt(interactionList.indexOf(item));
    realDebugPrint('findItemsAreBlank logicItems $logicItems');

  }
  void ctrlZ()
  {
    if(deletedItem.isNotEmpty) {
      interactionList.insert(deletedItem.last.first, deletedItem.last.last);
      logicItems.removeAt(deleteLogicIndex.last);
      visualItems[deleteVisualIndex.last]=Expanded(
        child: Container(
          // width: AppSize.s18,
          // height: AppSize.s22,
          margin: AppSpacing.s2Horizontal,
          constraints: BoxConstraints(minWidth: 18.w,minHeight: 22.h),
          decoration: BoxDecoration(
              color: AppColors.grayItems,
              borderRadius: BorderRadius.circular(AppSize.s02)),
        ),
      );
      deletedItem.removeLast();
      deleteVisualIndex.removeLast();
      deleteLogicIndex.removeLast();
      realDebugPrint('ctrlZ logicItems $logicItems');

    }
  }
  void checkAnswer()
  {
    var answer=logicItems.join(' ');
    realDebugPrint('answer is $answer');
  }

  Widget? processQuestion() {
      for (var element in list)  {
        if(interactionList.contains(element))
          {
            realDebugPrint('We found it $element');
            visualItems.add(Expanded(
              child: Container(
                // width: AppSize.s18,
                // height: AppSize.s22,
                margin: AppSpacing.s2Horizontal,
                constraints: BoxConstraints(minWidth: 18.w,minHeight: 22.h),
                decoration: BoxDecoration(
                    color: AppColors.grayItems,
                    borderRadius: BorderRadius.circular(AppSize.s02)),
              ),
            ));
          }else{
          realDebugPrint('We not found it');
          logicItems.add(element);
          visualItems.add(Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(element,style: AppTextStyles.body1,),
          ));
        }

      }
      realDebugPrint('logicItems $logicItems');

    return null;

  }
}
