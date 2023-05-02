import 'dart:convert';

import 'package:fill_in_the_gap/app/base/api_result.dart';
import 'package:fill_in_the_gap/data/data_models/questions/main/question_main_model.dart';
import 'package:fill_in_the_gap/data/network/exception/network_exceptions.dart';
import 'package:flutter/services.dart' show rootBundle;

abstract class CoursesLocalDataSource{
  Future<ApiResult<QuestionMainModel>> getCourses();
}

class CoursesLocalDataSourceImp extends CoursesLocalDataSource{
  @override
  Future<ApiResult<QuestionMainModel>> getCourses() async {
    try{
      final String response = await rootBundle.loadString('assets/mock_data.json');
      final data = await json.decode(response);
      return ApiResult.success(data: data);
    }on Exception catch (e){
      return ApiResult.failure(error: NetworkExceptions.parsingError(e.toString()));
    }


  }

}