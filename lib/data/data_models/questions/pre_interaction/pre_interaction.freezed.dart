// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_interaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreInteractionModel _$PreInteractionModelFromJson(Map<String, dynamic> json) {
  return _PreInteractionModel.fromJson(json);
}

/// @nodoc
mixin _$PreInteractionModel {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get visiableIf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreInteractionModelCopyWith<PreInteractionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreInteractionModelCopyWith<$Res> {
  factory $PreInteractionModelCopyWith(
          PreInteractionModel value, $Res Function(PreInteractionModel) then) =
      _$PreInteractionModelCopyWithImpl<$Res, PreInteractionModel>;
  @useResult
  $Res call(
      {String text, String type, int order, String id, String visiableIf});
}

/// @nodoc
class _$PreInteractionModelCopyWithImpl<$Res, $Val extends PreInteractionModel>
    implements $PreInteractionModelCopyWith<$Res> {
  _$PreInteractionModelCopyWithImpl(this._value, this._then);

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
    Object? visiableIf = null,
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
      visiableIf: null == visiableIf
          ? _value.visiableIf
          : visiableIf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreInteractionModelCopyWith<$Res>
    implements $PreInteractionModelCopyWith<$Res> {
  factory _$$_PreInteractionModelCopyWith(_$_PreInteractionModel value,
          $Res Function(_$_PreInteractionModel) then) =
      __$$_PreInteractionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text, String type, int order, String id, String visiableIf});
}

/// @nodoc
class __$$_PreInteractionModelCopyWithImpl<$Res>
    extends _$PreInteractionModelCopyWithImpl<$Res, _$_PreInteractionModel>
    implements _$$_PreInteractionModelCopyWith<$Res> {
  __$$_PreInteractionModelCopyWithImpl(_$_PreInteractionModel _value,
      $Res Function(_$_PreInteractionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? order = null,
    Object? id = null,
    Object? visiableIf = null,
  }) {
    return _then(_$_PreInteractionModel(
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
      visiableIf: null == visiableIf
          ? _value.visiableIf
          : visiableIf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreInteractionModel implements _PreInteractionModel {
  const _$_PreInteractionModel(
      {required this.text,
      required this.type,
      required this.order,
      required this.id,
      required this.visiableIf});

  factory _$_PreInteractionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreInteractionModelFromJson(json);

  @override
  final String text;
  @override
  final String type;
  @override
  final int order;
  @override
  final String id;
  @override
  final String visiableIf;

  @override
  String toString() {
    return 'PreInteractionModel(text: $text, type: $type, order: $order, id: $id, visiableIf: $visiableIf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreInteractionModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.visiableIf, visiableIf) ||
                other.visiableIf == visiableIf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, type, order, id, visiableIf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreInteractionModelCopyWith<_$_PreInteractionModel> get copyWith =>
      __$$_PreInteractionModelCopyWithImpl<_$_PreInteractionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreInteractionModelToJson(
      this,
    );
  }
}

abstract class _PreInteractionModel implements PreInteractionModel {
  const factory _PreInteractionModel(
      {required final String text,
      required final String type,
      required final int order,
      required final String id,
      required final String visiableIf}) = _$_PreInteractionModel;

  factory _PreInteractionModel.fromJson(Map<String, dynamic> json) =
      _$_PreInteractionModel.fromJson;

  @override
  String get text;
  @override
  String get type;
  @override
  int get order;
  @override
  String get id;
  @override
  String get visiableIf;
  @override
  @JsonKey(ignore: true)
  _$$_PreInteractionModelCopyWith<_$_PreInteractionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
