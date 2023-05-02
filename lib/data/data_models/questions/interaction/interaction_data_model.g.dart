// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InteractionDataModel _$$_InteractionDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_InteractionDataModel(
      files: (json['files'] as List<dynamic>)
          .map((e) => InteractionFiles.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      interactionOptions: (json['interactionOptions'] as List<dynamic>)
          .map((e) => InteractionOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      wrongOptions: (json['wrongOptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_InteractionDataModelToJson(
        _$_InteractionDataModel instance) =>
    <String, dynamic>{
      'files': instance.files,
      'type': instance.type,
      'interactionOptions': instance.interactionOptions,
      'wrongOptions': instance.wrongOptions,
    };

_$_InteractionFiles _$$_InteractionFilesFromJson(Map<String, dynamic> json) =>
    _$_InteractionFiles(
      codeLanguage: json['codeLanguage'] as String,
      isInteractive: json['isInteractive'] as bool,
      content: json['content'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_InteractionFilesToJson(_$_InteractionFiles instance) =>
    <String, dynamic>{
      'codeLanguage': instance.codeLanguage,
      'isInteractive': instance.isInteractive,
      'content': instance.content,
      'name': instance.name,
    };

_$_InteractionOptions _$$_InteractionOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_InteractionOptions(
      text:
          InteractionOptionText.fromJson(json['text'] as Map<String, dynamic>),
      correctOption: json['correctOption'] as bool,
    );

Map<String, dynamic> _$$_InteractionOptionsToJson(
        _$_InteractionOptions instance) =>
    <String, dynamic>{
      'text': instance.text,
      'correctOption': instance.correctOption,
    };

_$_InteractionOptionText _$$_InteractionOptionTextFromJson(
        Map<String, dynamic> json) =>
    _$_InteractionOptionText(
      position: json['position'] as int,
      start: json['start'] as int,
      end: json['end'] as int,
      length: json['length'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_InteractionOptionTextToJson(
        _$_InteractionOptionText instance) =>
    <String, dynamic>{
      'position': instance.position,
      'start': instance.start,
      'end': instance.end,
      'length': instance.length,
      'text': instance.text,
    };
