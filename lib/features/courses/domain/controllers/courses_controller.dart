import 'package:fill_in_the_gap/app/base/base_controller.dart';
import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:fill_in_the_gap/features/courses/domain/repositories/courses_repository.dart';

class CoursesController extends BaseController{

  final CoursesRepository _repository;
  CoursesController(this._repository);

  @override
  void onInit()async {
    showLoading();
    readMockData();
    hideLoading();
    super.onInit();
  }


  Future<void> readMockData()async
  {
    final result=await _repository.getCourses();
    result.when(success: (data) {
      realDebugPrint('Data Successfully decoded ${data.id}');
    }, failure: (error) {
      realDebugPrint('Data Unsuccessfully decoded $error');
    },);

  }
}