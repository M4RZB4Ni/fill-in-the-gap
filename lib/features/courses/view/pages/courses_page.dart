import 'package:fill_in_the_gap/app/base/base_view.dart';
import 'package:fill_in_the_gap/features/courses/domain/controllers/courses_controller.dart';
import 'package:fill_in_the_gap/features/courses/view/widgets/app_course_item.dart';
import 'package:flutter/material.dart';

class CoursesPage extends BaseView<CoursesController>{
  CoursesPage({super.key});

  @override
  Widget body(BuildContext context) {
    return ListView(
      children:  [
        APPCourseItem(title: 'أساسيات HTML',subTitle: 'إنشاء صفحات الويب باستخدام علامات HTML',status: true,onTab:  () => controller.handleOnClick,),
        APPCourseItem(title: 'أساسيات HTML',subTitle: 'إنشاء صفحات الويب باستخدام علامات HTML',status: false,onTab: () =>  controller.handleOnClick,),
        APPCourseItem(title: 'أساسيات HTML',subTitle: 'إنشاء صفحات الويب باستخدام علامات HTML',status: false,onTab: () =>  controller.handleOnClick,),
      ],
    );
  }

}