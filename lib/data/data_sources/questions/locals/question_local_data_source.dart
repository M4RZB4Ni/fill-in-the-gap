import 'package:fill_in_the_gap/app/base/api_result.dart';
import 'package:fill_in_the_gap/data/data_models/questions/main/question_main_model.dart';

abstract class QuestionLocalDataSource{
  Future<ApiResult<QuestionMainModel>> getCourses();
}

class QuestionLocalDataSourceImp extends QuestionLocalDataSource{
  @override
  Future<ApiResult<QuestionMainModel>> getCourses() {
    // TODO: implement getCourses
    throw UnimplementedError();
  }

}