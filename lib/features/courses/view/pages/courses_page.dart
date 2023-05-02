import 'package:fill_in_the_gap/app/base/base_view.dart';
import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/features/courses/domain/controllers/courses_controller.dart';
import 'package:flutter/material.dart';

class CoursesPage extends BaseView<CoursesController>{
  CoursesPage({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Container(color: AppColors.pink,);
  }

}