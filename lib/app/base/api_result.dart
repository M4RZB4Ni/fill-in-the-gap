import 'package:fill_in_the_gap/data/network/exception/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required final T data}) = Success<T>;

  const factory ApiResult.failure({required final NetworkExceptions error}) =
  Failure<T>;
}
