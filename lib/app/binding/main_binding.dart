
import 'package:fill_in_the_gap/app/binding/courses_binding.dart';
import 'package:fill_in_the_gap/app/binding/main_parent_binding.dart';
import 'package:fill_in_the_gap/app/binding/questions_binding.dart';
import 'package:fill_in_the_gap/data/local_storage/storege_service.dart';
import 'package:fill_in_the_gap/data/network/networking.dart';
import 'package:get/get.dart';


class MainBinding implements Bindings {
  @override
  void dependencies() {

    CoursesBinding().dependencies();
    QuestionsBinding().dependencies();
    MainParentBinding().dependencies();

    Get.lazyPut<LocalStorage>(StorageService.new);

    /// we do not need connect to internet in this project but I made this class
    /// to show coverage of this architect
    Get.lazyPut<RestClient>(
      RestClient.new,
      fenix: true,
    );


  }
}
