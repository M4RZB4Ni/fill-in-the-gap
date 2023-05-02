import 'package:fill_in_the_gap/features/question/domain/controllers/questions_controller.dart';
import 'package:get/get.dart';

class QuestionsBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<QuestionsController>(
          () => QuestionsController(),
      fenix: true,
    );

  }

}