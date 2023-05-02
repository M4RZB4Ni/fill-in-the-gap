// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_interaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostInteractionDataModel _$PostInteractionDataModelFromJson(
    Map<String, dynamic> json) {
  return _PostInteractionDataModel.fromJson(json);
}

/// @nodoc
mixin _$PostInteractionDataModel {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get visibleIf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostInteractionDataModelCopyWith<PostInteractionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInteractionDataModelCopyWith<$Res> {
  factory $PostInteractionDataModelCopyWith(PostInteractionDataModel value,
          $Res Function(PostInteractionDataModel) then) =
      _$PostInteractionDataModelCopyWithImpl<$Res, PostInteractionDataModel>;
  @useResult
  $Res call({String text, String type, int order, String id, String visibleIf});
}

/// @nodoc
class _$PostInteractionDataModelCopyWithImpl<$Res,
        $Val extends PostInteractionDataModel>
    implements $PostInteractionDataModelCopyWith<$Res> {
  _$PostInteractionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? order = null,
    Object? id = null,
    Object? visibleIf = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      visibleIf: null == visibleIf
          ? _value.visibleIf
          : visibleIf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostInteractionDataModelCopyWith<$Res>
    implements $PostInteractionDataModelCopyWith<$Res> {
  factory _$$_PostInteractionDataModelCopyWith(
          _$_PostInteractionDataModel value,
          $Res Function(_$_PostInteractionDataModel) then) =
      __$$_PostInteractionDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String type, int order, String id, String visibleIf});
}

/// @nodoc
class __$$_PostInteractionDataModelCopyWithImpl<$Res>
    extends _$PostInteractionDataModelCopyWithImpl<$Res,
        _$_PostInteractionDataModel>
    implements _$$_PostInteractionDataModelCopyWith<$Res> {
  __$$_PostInteractionDataModelCopyWithImpl(_$_PostInteractionDataModel _value,
      $Res Function(_$_PostInteractionDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? order = null,
    Object? id = null,
    Object? visibleIf = null,
  }) {
    return _then(_$_PostInteractionDataModel(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      visibleIf: null == visibleIf
          ? _value.visibleIf
          : visibleIf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostInteractionDataModel implements _PostInteractionDataModel {
  const _$_PostInteractionDataModel(
      {required this.text,
      required this.type,
      required this.order,
      required this.id,
      required this.visibleIf});

  factory _$_PostInteractionDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostInteractionDataModelFromJson(json);

  @override
  final String text;
  @override
  final String type;
  @override
  final int order;
  @override
  final String id;
  @override
  final String visibleIf;

  @override
  String toString() {
    return 'PostInteractionDataModel(text: $text, type: $type, order: $order, id: $id, visibleIf: $visibleIf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostInteractionDataModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.visibleIf, visibleIf) ||
                other.visibleIf == visibleIf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, type, order, id, visibleIf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostInteractionDataModelCopyWith<_$_PostInteractionDataModel>
      get copyWith => __$$_PostInteractionDataModelCopyWithImpl<
          _$_PostInteractionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostInteractionDataModelToJson(
      this,
    );
  }
}

abstract class _PostInteractionDataModel implements PostInteractionDataModel {
  const factory _PostInteractionDataModel(
      {required final String text,
      required final String type,
      required final int order,
      required final String id,
      required final String visibleIf}) = _$_PostInteractionDataModel;

  factory _PostInteractionDataModel.fromJson(Map<String, dynamic> json) =
      _$_PostInteractionDataModel.fromJson;

  @override
  String get text;
  @override
  String get type;
  @override
  int get order;
  @override
  String get id;
  @override
  String get visibleIf;
  @override
  @JsonKey(ignore: true)
  _$$_PostInteractionDataModelCopyWith<_$_PostInteractionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
