import 'package:fill_in_the_gap/app/base/api_result.dart';
import 'package:fill_in_the_gap/data/data_models/questions/main/question_main_model.dart';
import 'package:fill_in_the_gap/data/data_sources/courses/locals/courses_local_data_source.dart';

abstract class CoursesRepository {
  Future<ApiResult<QuestionMainModel>> getCourses();
}

class CoursesRepositoryImp extends CoursesRepository {
  final CoursesLocalDataSource _localDataSource;

  CoursesRepositoryImp(this._localDataSource);

  @override
  Future<ApiResult<QuestionMainModel>> getCourses() async {
    final result = await _localDataSource.getCourses();
    return result.when(
      success: (data) => ApiResult.success(data: data),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}
