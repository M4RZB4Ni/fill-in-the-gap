import 'package:fill_in_the_gap/app/routes/app_routes.dart';
import 'package:fill_in_the_gap/features/courses/view/pages/courses_page.dart';
import 'package:fill_in_the_gap/features/question/view/pages/questions_page.dart';
import 'package:get/get.dart';

class AppPages {
   final pages = [
    GetPage(
      name: Routes.courses,
      page: CoursesPage.new,
    ),
     GetPage(
       name: Routes.question,
       page: QuestionsPage.new,
     ),
  ];
}
