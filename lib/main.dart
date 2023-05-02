import 'package:fill_in_the_gap/app/binding/main_binding.dart';
import 'package:fill_in_the_gap/app/resources/app_theme.dart';
import 'package:fill_in_the_gap/app/routes/app_pages.dart';
import 'package:fill_in_the_gap/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) => GetMaterialApp(
      title: 'Fill in the gap App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.courses,
      theme: AppThemes().lightTheme,
      defaultTransition: Transition.fade,
      initialBinding: MainBinding(),
      supportedLocales: const [Locale('en')],
      fallbackLocale: const Locale('en'),
      getPages: AppPages().pages,
    ),);
  }
}


