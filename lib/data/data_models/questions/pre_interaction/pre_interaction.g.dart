// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_interaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreInteractionModel _$$_PreInteractionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PreInteractionModel(
      text: json['text'] as String,
      type: json['type'] as String,
      order: json['order'] as int,
      id: json['id'] as String,
      visibleIf: json['visibleIf'] as String,
    );

Map<String, dynamic> _$$_PreInteractionModelToJson(
        _$_PreInteractionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
      'order': instance.order,
      'id': instance.id,
      'visibleIf': instance.visibleIf,
    };
