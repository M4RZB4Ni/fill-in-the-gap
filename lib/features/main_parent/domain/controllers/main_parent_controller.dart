

import 'package:fill_in_the_gap/app/base/base_controller.dart';
import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:fill_in_the_gap/data/enumerations/enums.dart';
import 'package:get/get.dart';

class MainParentController extends BaseController {
  final selectedItems = [].obs;
  final currentItem = MainParentType.RAHLATAK.obs;

  @override
  void onInit() {
    currentItem.value = MainParentType.RAHLATAK;
    super.onInit();
  }

  void onTapItem(final MainParentType itemEnum) {
    realDebugPrint('itemEnum $itemEnum');
    currentItem.value = itemEnum;
  }


}