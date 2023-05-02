// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_interaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostInteractionDataModel _$$_PostInteractionDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostInteractionDataModel(
      text: json['text'] as String,
      type: json['type'] as String,
      order: json['order'] as int,
      id: json['id'] as String,
      visiableIf: json['visiableIf'] as String,
    );

Map<String, dynamic> _$$_PostInteractionDataModelToJson(
        _$_PostInteractionDataModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
      'order': instance.order,
      'id': instance.id,
      'visiableIf': instance.visiableIf,
    };
