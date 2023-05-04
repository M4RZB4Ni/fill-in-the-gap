import 'package:fill_in_the_gap/data/data_sources/courses/locals/courses_local_data_source.dart';
import 'package:fill_in_the_gap/features/question/domain/controllers/questions_controller.dart';
import 'package:fill_in_the_gap/features/question/domain/repositories/questions_repository.dart';
import 'package:get/get.dart';

class QuestionsBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<QuestionsController>(
          () => QuestionsController(),
      fenix: true,
    );
    Get.lazyPut<QuestionsRepository>(
          () => QuestionsRepositoryImp(Get.find<CoursesLocalDataSource>()),
      fenix: true,
    );
  }

}