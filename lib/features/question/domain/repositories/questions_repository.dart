import 'package:fill_in_the_gap/app/base/api_result.dart';
import 'package:fill_in_the_gap/data/data_models/questions/main/question_main_model.dart';
import 'package:fill_in_the_gap/data/data_sources/courses/locals/courses_local_data_source.dart';

abstract class QuestionsRepository {
  Future<ApiResult<QuestionMainModel>> getQuestions();
}

class QuestionsRepositoryImp extends QuestionsRepository {

  /// repository decide to get data from which source, in this situation one of the sources is
  /// the CoursesLocalDataSource and when we decide to expand the project, Question's Remote data source and more
  /// data sources will add.
  final CoursesLocalDataSource _coursesLocalDataSource;

  QuestionsRepositoryImp(this._coursesLocalDataSource);

  @override
  Future<ApiResult<QuestionMainModel>> getQuestions() async {
    final result = await _coursesLocalDataSource.getCourses();
    return result.when(
      success: (data) => ApiResult.success(data: data),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}