import 'package:fill_in_the_gap/data/data_models/questions/interaction/interaction_data_model.dart';
import 'package:fill_in_the_gap/data/data_models/questions/post_interaction/post_interaction_data_model.dart';
import 'package:fill_in_the_gap/data/data_models/questions/pre_interaction/pre_interaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_main_model.freezed.dart';
part 'question_main_model.g.dart';

@freezed
class QuestionMainModel with _$QuestionMainModel {
  const factory QuestionMainModel({
    required String id,
    required List<PreInteractionModel> preInteraction,
    required InteractionDataModel interactionModule,
    required List<PostInteractionDataModel> postInteraction,
    required String type,

  }) = _QuestionMainModel;

  factory QuestionMainModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionMainModelFromJson(json);


}
