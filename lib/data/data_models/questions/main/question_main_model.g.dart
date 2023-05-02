// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionMainModel _$$_QuestionMainModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionMainModel(
      id: json['id'] as String,
      preInteraction: (json['preInteraction'] as List<dynamic>)
          .map((e) => PreInteractionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactionModule: InteractionDataModel.fromJson(
          json['interactionModule'] as Map<String, dynamic>),
      postInteraction: (json['postInteraction'] as List<dynamic>)
          .map((e) =>
              PostInteractionDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_QuestionMainModelToJson(
        _$_QuestionMainModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preInteraction': instance.preInteraction,
      'interactionModule': instance.interactionModule,
      'postInteraction': instance.postInteraction,
      'type': instance.type,
    };
