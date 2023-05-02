import 'package:fill_in_the_gap/data/data_sources/courses/locals/courses_local_data_source.dart';
import 'package:fill_in_the_gap/features/courses/domain/controllers/courses_controller.dart';
import 'package:fill_in_the_gap/features/courses/domain/repositories/courses_repository.dart';
import 'package:get/get.dart';

class CoursesBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<CoursesController>(
          () => CoursesController( Get.find<CoursesRepository>(),),
      fenix: true,
    );

    Get.lazyPut<CoursesRepository>(
          () => CoursesRepositoryImp(Get.find<CoursesLocalDataSource>()),
      fenix: true,
    );

    Get.lazyPut<CoursesLocalDataSource>(
          () => CoursesLocalDataSourceImp(),
      fenix: true,
    );
  }

}