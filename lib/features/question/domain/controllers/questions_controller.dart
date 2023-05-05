import 'package:fill_in_the_gap/app/base/base_controller.dart';
import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:fill_in_the_gap/data/data_models/questions/interaction/interaction_data_model.dart';
import 'package:fill_in_the_gap/data/data_models/questions/post_interaction/post_interaction_data_model.dart';
import 'package:fill_in_the_gap/features/general_components/app_snack_bar.dart';
import 'package:fill_in_the_gap/features/question/domain/repositories/questions_repository.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_gray_box.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_stick_answer.dart';
import 'package:fill_in_the_gap/features/question/view/widgets/app_text_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionsController extends BaseController {
  final QuestionsRepository _repository;

  late List<String> questionInList;
  RxList<String> interactionList = List<String>.empty().obs;

  late List<List<dynamic>> deletedItem = [];
  late List<int> deleteVisualIndex = List.empty(growable: true);
  late List<int> deleteLogicIndex = List.empty(growable: true);

  RxList<Widget> visualItems = List<Widget>.empty(growable: false).obs;
  RxList<String> logicItems = List<String>.empty(growable: false).obs;
  late List<PostInteractionDataModel> _postInteractionDataModel;
  late String fileName;

  QuestionsController(this._repository);

  @override
  void onInit() {
    showLoading();
    loadData();
    super.onInit();
  }

  void clearData() {
    visualItems.clear();
    logicItems.clear();
    deleteLogicIndex.clear();
    deleteVisualIndex.clear();
    deletedItem.clear();
    interactionList.clear();
    questionInList.clear();
    loadData();
  }

  Future<void> loadData() async {
    final result = await _repository.getQuestions();

    result.when(
      success: (data) {
        setQuestionList(data.interactionModule.files.first.content);
        prepareInteractions(data.interactionModule);
        setFileName(data.interactionModule.files.first.name);
        processQuestion();
        setPostInteractionModel(data.postInteraction);
        hideLoading();
      },
      failure: (error) {
        realDebugPrint('Error in get question data');
      },
    );
  }

  void setFileName(String fileName) {
    this.fileName = fileName;
  }
  void setPostInteractionModel(List<PostInteractionDataModel> data) {
    _postInteractionDataModel = data;
  }

  void setQuestionList(String question) {
    questionInList = question.split(' ');
  }

  void prepareInteractions(InteractionDataModel iDm) {
    for (var element in iDm.interactionOptions) {
      interactionList.add(element.text.text);
    }
  }

  void findItemsAreBlank(int index) {
    var item = interactionList[index];
    deletedItem.add([interactionList.indexOf(item), item]);
    logicItems.insert(
        visualItems.indexWhere((element) => element is APPGrayBox), item);

    deleteVisualIndex
        .add(visualItems.indexWhere((element) => element is APPGrayBox));
    deleteLogicIndex
        .add(visualItems.indexWhere((element) => element is APPGrayBox));
    visualItems[visualItems.indexWhere((element) => element is APPGrayBox)] =
        APPStickAnswer(item: item);

    interactionList.removeAt(interactionList.indexOf(item));
    realDebugPrint('findItemsAreBlank logicItems $logicItems');
  }

  void ctrlZ() {
    if (deletedItem.isNotEmpty) {
      interactionList.insert(deletedItem.last.first, deletedItem.last.last);
      logicItems.removeAt(deleteLogicIndex.last);
      visualItems[deleteVisualIndex.last] = const APPGrayBox();
      deletedItem.removeLast();
      deleteVisualIndex.removeLast();
      deleteLogicIndex.removeLast();
      realDebugPrint('ctrlZ logicItems $logicItems');
    }
  }

  void checkAnswer() {
    realDebugPrint('checkAnswer');
    var answer = logicItems.join(' ');
    var question = questionInList.join(' ');
    if(answer==question)
      {
        showPostInteraction(true);

      }else{
      showPostInteraction(false);

    }
  }

  Widget? processQuestion() {
    for (var element in questionInList) {
      if (interactionList.contains(element)) {
        realDebugPrint('We found it $element');
        visualItems.add(const APPGrayBox());
      } else {
        realDebugPrint('We not found it');
        logicItems.add(element);
        visualItems.add(APPTextItem(element: element));
      }
    }
    realDebugPrint('logicItems $logicItems');

    return null;
  }

  void showPostInteraction(bool correctAnswer)
  {
    if(correctAnswer)
      {
        APPSnackBar().snackBar(title:_postInteractionDataModel[0].text, message: _postInteractionDataModel[0].text);
      }else{
      APPSnackBar().snackBar(title:_postInteractionDataModel[1].text, message: _postInteractionDataModel[1].text);

    }
  }
}
