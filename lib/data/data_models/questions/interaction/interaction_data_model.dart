import 'package:freezed_annotation/freezed_annotation.dart';

part 'interaction_data_model.freezed.dart';
part 'interaction_data_model.g.dart';

@freezed
class InteractionDataModel with _$InteractionDataModel {
  const factory InteractionDataModel({
    required List<InteractionFiles> files,
    required String type,
    required List<InteractionOptions> interactionOptions,
    required List<String> wrongOptions,
  }) = _InteractionDataModel;

  factory InteractionDataModel.fromJson(Map<String, dynamic> json) =>
      _$InteractionDataModelFromJson(json);
}



@freezed
class InteractionFiles with _$InteractionFiles {
  const factory InteractionFiles({
    required String codeLanguage,
    required bool isInteractive,
    required String content,
    required String name,
  }) = _InteractionFiles;

  factory InteractionFiles.fromJson(Map<String, dynamic> json) =>
      _$InteractionFilesFromJson(json);


}


@freezed
class InteractionOptions with _$InteractionOptions {
  const factory InteractionOptions({
    required InteractionOptionText text,
    required bool correctOption,
  }) = _InteractionOptions;

  factory InteractionOptions.fromJson(Map<String, dynamic> json) =>
      _$InteractionOptionsFromJson(json);
}


@freezed
class InteractionOptionText with _$InteractionOptionText {
  const factory InteractionOptionText({
    required int position,
    required int start,
    required int end,
    required int length,
    required String text,
  }) = _InteractionOptionText;

  factory InteractionOptionText.fromJson(Map<String, dynamic> json) =>
      _$InteractionOptionTextFromJson(json);
}
