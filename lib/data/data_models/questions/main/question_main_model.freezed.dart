// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionMainModel _$QuestionMainModelFromJson(Map<String, dynamic> json) {
  return _QuestionMainModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionMainModel {
  String get id => throw _privateConstructorUsedError;
  List<PreInteractionModel> get preInteraction =>
      throw _privateConstructorUsedError;
  InteractionDataModel get interactionModule =>
      throw _privateConstructorUsedError;
  List<PostInteractionDataModel> get postInteraction =>
      throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionMainModelCopyWith<QuestionMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionMainModelCopyWith<$Res> {
  factory $QuestionMainModelCopyWith(
          QuestionMainModel value, $Res Function(QuestionMainModel) then) =
      _$QuestionMainModelCopyWithImpl<$Res, QuestionMainModel>;
  @useResult
  $Res call(
      {String id,
      List<PreInteractionModel> preInteraction,
      InteractionDataModel interactionModule,
      List<PostInteractionDataModel> postInteraction,
      String type});

  $InteractionDataModelCopyWith<$Res> get interactionModule;
}

/// @nodoc
class _$QuestionMainModelCopyWithImpl<$Res, $Val extends QuestionMainModel>
    implements $QuestionMainModelCopyWith<$Res> {
  _$QuestionMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? preInteraction = null,
    Object? interactionModule = null,
    Object? postInteraction = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      preInteraction: null == preInteraction
          ? _value.preInteraction
          : preInteraction // ignore: cast_nullable_to_non_nullable
              as List<PreInteractionModel>,
      interactionModule: null == interactionModule
          ? _value.interactionModule
          : interactionModule // ignore: cast_nullable_to_non_nullable
              as InteractionDataModel,
      postInteraction: null == postInteraction
          ? _value.postInteraction
          : postInteraction // ignore: cast_nullable_to_non_nullable
              as List<PostInteractionDataModel>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InteractionDataModelCopyWith<$Res> get interactionModule {
    return $InteractionDataModelCopyWith<$Res>(_value.interactionModule,
        (value) {
      return _then(_value.copyWith(interactionModule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionMainModelCopyWith<$Res>
    implements $QuestionMainModelCopyWith<$Res> {
  factory _$$_QuestionMainModelCopyWith(_$_QuestionMainModel value,
          $Res Function(_$_QuestionMainModel) then) =
      __$$_QuestionMainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<PreInteractionModel> preInteraction,
      InteractionDataModel interactionModule,
      List<PostInteractionDataModel> postInteraction,
      String type});

  @override
  $InteractionDataModelCopyWith<$Res> get interactionModule;
}

/// @nodoc
class __$$_QuestionMainModelCopyWithImpl<$Res>
    extends _$QuestionMainModelCopyWithImpl<$Res, _$_QuestionMainModel>
    implements _$$_QuestionMainModelCopyWith<$Res> {
  __$$_QuestionMainModelCopyWithImpl(
      _$_QuestionMainModel _value, $Res Function(_$_QuestionMainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? preInteraction = null,
    Object? interactionModule = null,
    Object? postInteraction = null,
    Object? type = null,
  }) {
    return _then(_$_QuestionMainModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      preInteraction: null == preInteraction
          ? _value._preInteraction
          : preInteraction // ignore: cast_nullable_to_non_nullable
              as List<PreInteractionModel>,
      interactionModule: null == interactionModule
          ? _value.interactionModule
          : interactionModule // ignore: cast_nullable_to_non_nullable
              as InteractionDataModel,
      postInteraction: null == postInteraction
          ? _value._postInteraction
          : postInteraction // ignore: cast_nullable_to_non_nullable
              as List<PostInteractionDataModel>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionMainModel implements _QuestionMainModel {
  const _$_QuestionMainModel(
      {required this.id,
      required final List<PreInteractionModel> preInteraction,
      required this.interactionModule,
      required final List<PostInteractionDataModel> postInteraction,
      required this.type})
      : _preInteraction = preInteraction,
        _postInteraction = postInteraction;

  factory _$_QuestionMainModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionMainModelFromJson(json);

  @override
  final String id;
  final List<PreInteractionModel> _preInteraction;
  @override
  List<PreInteractionModel> get preInteraction {
    if (_preInteraction is EqualUnmodifiableListView) return _preInteraction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preInteraction);
  }

  @override
  final InteractionDataModel interactionModule;
  final List<PostInteractionDataModel> _postInteraction;
  @override
  List<PostInteractionDataModel> get postInteraction {
    if (_postInteraction is EqualUnmodifiableListView) return _postInteraction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postInteraction);
  }

  @override
  final String type;

  @override
  String toString() {
    return 'QuestionMainModel(id: $id, preInteraction: $preInteraction, interactionModule: $interactionModule, postInteraction: $postInteraction, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionMainModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._preInteraction, _preInteraction) &&
            (identical(other.interactionModule, interactionModule) ||
                other.interactionModule == interactionModule) &&
            const DeepCollectionEquality()
                .equals(other._postInteraction, _postInteraction) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_preInteraction),
      interactionModule,
      const DeepCollectionEquality().hash(_postInteraction),
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionMainModelCopyWith<_$_QuestionMainModel> get copyWith =>
      __$$_QuestionMainModelCopyWithImpl<_$_QuestionMainModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionMainModelToJson(
      this,
    );
  }
}

abstract class _QuestionMainModel implements QuestionMainModel {
  const factory _QuestionMainModel(
      {required final String id,
      required final List<PreInteractionModel> preInteraction,
      required final InteractionDataModel interactionModule,
      required final List<PostInteractionDataModel> postInteraction,
      required final String type}) = _$_QuestionMainModel;

  factory _QuestionMainModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionMainModel.fromJson;

  @override
  String get id;
  @override
  List<PreInteractionModel> get preInteraction;
  @override
  InteractionDataModel get interactionModule;
  @override
  List<PostInteractionDataModel> get postInteraction;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionMainModelCopyWith<_$_QuestionMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
