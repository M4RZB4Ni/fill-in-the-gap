import 'package:fill_in_the_gap/app/base/base_view.dart';
import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/data/enumerations/enums.dart';
import 'package:fill_in_the_gap/features/courses/view/pages/courses_page.dart';
import 'package:fill_in_the_gap/features/main_parent/components/app_bottom_navigation.dart';
import 'package:fill_in_the_gap/features/main_parent/domain/controllers/main_parent_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MainParentPage extends BaseView<MainParentController> {
  MainParentPage({Key? key}) : super(key: key);

  @override
  bool safeArea() {
    return true;
  }

  @override
  Future<bool> onWillPop(final BuildContext context) {
    return Future.value(true);
  }

  @override
  Widget? bottomNavigationBar(final BuildContext context) {
    return APPBottomNavigation(
      onTapItem: controller.onTapItem,
    );
  }
  //
  // @override
  // Widget? floatingActionButton() {
  //   return APPBottomNavigationFloatActionButton(
  //     enable: !showProgressCreatePost.value,
  //     onTap: () => controller.gotoCreatePost(),
  //   );
  // }

  @override
  FloatingActionButtonLocation? floatingActionButtonLocation() {
    return FloatingActionButtonLocation.centerDocked;
  }

  @override
  Widget body(final BuildContext context) {
    return Obx(() => controller.currentItem.value==MainParentType.ALDOROS
        ? Container(color: AppColors.textMainColor,)
        : controller.currentItem.value==MainParentType.RAHLATAK
            ? CoursesPage()
            : controller.currentItem.value==MainParentType.ALMANTADY
                ? Container(color: AppColors.grey200,)
                : controller.currentItem.value==MainParentType.SAFHATI
                    ? Container(color: AppColors.primaryLight,)
                    : Container(color: AppColors.primary,));
  }
}
