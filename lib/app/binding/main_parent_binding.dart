import 'package:fill_in_the_gap/features/main_parent/domain/controllers/main_parent_controller.dart';
import 'package:get/get.dart';

class MainParentBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<MainParentController>(
          () => MainParentController(),
      fenix: true,
    );

  }

}