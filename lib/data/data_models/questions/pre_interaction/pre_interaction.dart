import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_interaction.freezed.dart';
part 'pre_interaction.g.dart';

@freezed
class PreInteractionModel with _$PreInteractionModel {
  const factory PreInteractionModel({
    required String text,
    required String type,
    required int order,
    required String id,
    required String visiableIf,
  }) = _PreInteractionModel;

  factory PreInteractionModel.fromJson(Map<String, dynamic> json) =>
      _$PreInteractionModelFromJson(json);


}
