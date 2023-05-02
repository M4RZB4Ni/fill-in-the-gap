
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_interaction_data_model.freezed.dart';
part 'post_interaction_data_model.g.dart';

@freezed
class PostInteractionDataModel with _$PostInteractionDataModel {
  const factory PostInteractionDataModel({
    required String text,
    required String type,
    required int order,
    required String id,
    required String visiableIf,
  }) = _PostInteractionDataModel;

  factory PostInteractionDataModel.fromJson(Map<String, dynamic> json) =>
      _$PostInteractionDataModelFromJson(json);


}
