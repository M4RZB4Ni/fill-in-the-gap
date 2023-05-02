// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InteractionDataModel _$InteractionDataModelFromJson(Map<String, dynamic> json) {
  return _InteractionDataModel.fromJson(json);
}

/// @nodoc
mixin _$InteractionDataModel {
  List<InteractionFiles> get files => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<InteractionOptions> get interactionOptions =>
      throw _privateConstructorUsedError;
  List<String> get wrongOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractionDataModelCopyWith<InteractionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionDataModelCopyWith<$Res> {
  factory $InteractionDataModelCopyWith(InteractionDataModel value,
          $Res Function(InteractionDataModel) then) =
      _$InteractionDataModelCopyWithImpl<$Res, InteractionDataModel>;
  @useResult
  $Res call(
      {List<InteractionFiles> files,
      String type,
      List<InteractionOptions> interactionOptions,
      List<String> wrongOptions});
}

/// @nodoc
class _$InteractionDataModelCopyWithImpl<$Res,
        $Val extends InteractionDataModel>
    implements $InteractionDataModelCopyWith<$Res> {
  _$InteractionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? type = null,
    Object? interactionOptions = null,
    Object? wrongOptions = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<InteractionFiles>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      interactionOptions: null == interactionOptions
          ? _value.interactionOptions
          : interactionOptions // ignore: cast_nullable_to_non_nullable
              as List<InteractionOptions>,
      wrongOptions: null == wrongOptions
          ? _value.wrongOptions
          : wrongOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InteractionDataModelCopyWith<$Res>
    implements $InteractionDataModelCopyWith<$Res> {
  factory _$$_InteractionDataModelCopyWith(_$_InteractionDataModel value,
          $Res Function(_$_InteractionDataModel) then) =
      __$$_InteractionDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InteractionFiles> files,
      String type,
      List<InteractionOptions> interactionOptions,
      List<String> wrongOptions});
}

/// @nodoc
class __$$_InteractionDataModelCopyWithImpl<$Res>
    extends _$InteractionDataModelCopyWithImpl<$Res, _$_InteractionDataModel>
    implements _$$_InteractionDataModelCopyWith<$Res> {
  __$$_InteractionDataModelCopyWithImpl(_$_InteractionDataModel _value,
      $Res Function(_$_InteractionDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? type = null,
    Object? interactionOptions = null,
    Object? wrongOptions = null,
  }) {
    return _then(_$_InteractionDataModel(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<InteractionFiles>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      interactionOptions: null == interactionOptions
          ? _value._interactionOptions
          : interactionOptions // ignore: cast_nullable_to_non_nullable
              as List<InteractionOptions>,
      wrongOptions: null == wrongOptions
          ? _value._wrongOptions
          : wrongOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InteractionDataModel implements _InteractionDataModel {
  const _$_InteractionDataModel(
      {required final List<InteractionFiles> files,
      required this.type,
      required final List<InteractionOptions> interactionOptions,
      required final List<String> wrongOptions})
      : _files = files,
        _interactionOptions = interactionOptions,
        _wrongOptions = wrongOptions;

  factory _$_InteractionDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_InteractionDataModelFromJson(json);

  final List<InteractionFiles> _files;
  @override
  List<InteractionFiles> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String type;
  final List<InteractionOptions> _interactionOptions;
  @override
  List<InteractionOptions> get interactionOptions {
    if (_interactionOptions is EqualUnmodifiableListView)
      return _interactionOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interactionOptions);
  }

  final List<String> _wrongOptions;
  @override
  List<String> get wrongOptions {
    if (_wrongOptions is EqualUnmodifiableListView) return _wrongOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wrongOptions);
  }

  @override
  String toString() {
    return 'InteractionDataModel(files: $files, type: $type, interactionOptions: $interactionOptions, wrongOptions: $wrongOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionDataModel &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._interactionOptions, _interactionOptions) &&
            const DeepCollectionEquality()
                .equals(other._wrongOptions, _wrongOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_files),
      type,
      const DeepCollectionEquality().hash(_interactionOptions),
      const DeepCollectionEquality().hash(_wrongOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionDataModelCopyWith<_$_InteractionDataModel> get copyWith =>
      __$$_InteractionDataModelCopyWithImpl<_$_InteractionDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InteractionDataModelToJson(
      this,
    );
  }
}

abstract class _InteractionDataModel implements InteractionDataModel {
  const factory _InteractionDataModel(
      {required final List<InteractionFiles> files,
      required final String type,
      required final List<InteractionOptions> interactionOptions,
      required final List<String> wrongOptions}) = _$_InteractionDataModel;

  factory _InteractionDataModel.fromJson(Map<String, dynamic> json) =
      _$_InteractionDataModel.fromJson;

  @override
  List<InteractionFiles> get files;
  @override
  String get type;
  @override
  List<InteractionOptions> get interactionOptions;
  @override
  List<String> get wrongOptions;
  @override
  @JsonKey(ignore: true)
  _$$_InteractionDataModelCopyWith<_$_InteractionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionFiles _$InteractionFilesFromJson(Map<String, dynamic> json) {
  return _InteractionFiles.fromJson(json);
}

/// @nodoc
mixin _$InteractionFiles {
  String get codeLanguage => throw _privateConstructorUsedError;
  bool get isInteractive => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractionFilesCopyWith<InteractionFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionFilesCopyWith<$Res> {
  factory $InteractionFilesCopyWith(
          InteractionFiles value, $Res Function(InteractionFiles) then) =
      _$InteractionFilesCopyWithImpl<$Res, InteractionFiles>;
  @useResult
  $Res call(
      {String codeLanguage, bool isInteractive, String content, String name});
}

/// @nodoc
class _$InteractionFilesCopyWithImpl<$Res, $Val extends InteractionFiles>
    implements $InteractionFilesCopyWith<$Res> {
  _$InteractionFilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeLanguage = null,
    Object? isInteractive = null,
    Object? content = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      codeLanguage: null == codeLanguage
          ? _value.codeLanguage
          : codeLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isInteractive: null == isInteractive
          ? _value.isInteractive
          : isInteractive // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InteractionFilesCopyWith<$Res>
    implements $InteractionFilesCopyWith<$Res> {
  factory _$$_InteractionFilesCopyWith(
          _$_InteractionFiles value, $Res Function(_$_InteractionFiles) then) =
      __$$_InteractionFilesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codeLanguage, bool isInteractive, String content, String name});
}

/// @nodoc
class __$$_InteractionFilesCopyWithImpl<$Res>
    extends _$InteractionFilesCopyWithImpl<$Res, _$_InteractionFiles>
    implements _$$_InteractionFilesCopyWith<$Res> {
  __$$_InteractionFilesCopyWithImpl(
      _$_InteractionFiles _value, $Res Function(_$_InteractionFiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeLanguage = null,
    Object? isInteractive = null,
    Object? content = null,
    Object? name = null,
  }) {
    return _then(_$_InteractionFiles(
      codeLanguage: null == codeLanguage
          ? _value.codeLanguage
          : codeLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isInteractive: null == isInteractive
          ? _value.isInteractive
          : isInteractive // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InteractionFiles implements _InteractionFiles {
  const _$_InteractionFiles(
      {required this.codeLanguage,
      required this.isInteractive,
      required this.content,
      required this.name});

  factory _$_InteractionFiles.fromJson(Map<String, dynamic> json) =>
      _$$_InteractionFilesFromJson(json);

  @override
  final String codeLanguage;
  @override
  final bool isInteractive;
  @override
  final String content;
  @override
  final String name;

  @override
  String toString() {
    return 'InteractionFiles(codeLanguage: $codeLanguage, isInteractive: $isInteractive, content: $content, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionFiles &&
            (identical(other.codeLanguage, codeLanguage) ||
                other.codeLanguage == codeLanguage) &&
            (identical(other.isInteractive, isInteractive) ||
                other.isInteractive == isInteractive) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codeLanguage, isInteractive, content, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionFilesCopyWith<_$_InteractionFiles> get copyWith =>
      __$$_InteractionFilesCopyWithImpl<_$_InteractionFiles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InteractionFilesToJson(
      this,
    );
  }
}

abstract class _InteractionFiles implements InteractionFiles {
  const factory _InteractionFiles(
      {required final String codeLanguage,
      required final bool isInteractive,
      required final String content,
      required final String name}) = _$_InteractionFiles;

  factory _InteractionFiles.fromJson(Map<String, dynamic> json) =
      _$_InteractionFiles.fromJson;

  @override
  String get codeLanguage;
  @override
  bool get isInteractive;
  @override
  String get content;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_InteractionFilesCopyWith<_$_InteractionFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionOptions _$InteractionOptionsFromJson(Map<String, dynamic> json) {
  return _InteractionOptions.fromJson(json);
}

/// @nodoc
mixin _$InteractionOptions {
  InteractionOptionText get text => throw _privateConstructorUsedError;
  bool get correctOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractionOptionsCopyWith<InteractionOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionOptionsCopyWith<$Res> {
  factory $InteractionOptionsCopyWith(
          InteractionOptions value, $Res Function(InteractionOptions) then) =
      _$InteractionOptionsCopyWithImpl<$Res, InteractionOptions>;
  @useResult
  $Res call({InteractionOptionText text, bool correctOption});

  $InteractionOptionTextCopyWith<$Res> get text;
}

/// @nodoc
class _$InteractionOptionsCopyWithImpl<$Res, $Val extends InteractionOptions>
    implements $InteractionOptionsCopyWith<$Res> {
  _$InteractionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? correctOption = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as InteractionOptionText,
      correctOption: null == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InteractionOptionTextCopyWith<$Res> get text {
    return $InteractionOptionTextCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InteractionOptionsCopyWith<$Res>
    implements $InteractionOptionsCopyWith<$Res> {
  factory _$$_InteractionOptionsCopyWith(_$_InteractionOptions value,
          $Res Function(_$_InteractionOptions) then) =
      __$$_InteractionOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InteractionOptionText text, bool correctOption});

  @override
  $InteractionOptionTextCopyWith<$Res> get text;
}

/// @nodoc
class __$$_InteractionOptionsCopyWithImpl<$Res>
    extends _$InteractionOptionsCopyWithImpl<$Res, _$_InteractionOptions>
    implements _$$_InteractionOptionsCopyWith<$Res> {
  __$$_InteractionOptionsCopyWithImpl(
      _$_InteractionOptions _value, $Res Function(_$_InteractionOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? correctOption = null,
  }) {
    return _then(_$_InteractionOptions(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as InteractionOptionText,
      correctOption: null == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InteractionOptions implements _InteractionOptions {
  const _$_InteractionOptions(
      {required this.text, required this.correctOption});

  factory _$_InteractionOptions.fromJson(Map<String, dynamic> json) =>
      _$$_InteractionOptionsFromJson(json);

  @override
  final InteractionOptionText text;
  @override
  final bool correctOption;

  @override
  String toString() {
    return 'InteractionOptions(text: $text, correctOption: $correctOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionOptions &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.correctOption, correctOption) ||
                other.correctOption == correctOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, correctOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionOptionsCopyWith<_$_InteractionOptions> get copyWith =>
      __$$_InteractionOptionsCopyWithImpl<_$_InteractionOptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InteractionOptionsToJson(
      this,
    );
  }
}

abstract class _InteractionOptions implements InteractionOptions {
  const factory _InteractionOptions(
      {required final InteractionOptionText text,
      required final bool correctOption}) = _$_InteractionOptions;

  factory _InteractionOptions.fromJson(Map<String, dynamic> json) =
      _$_InteractionOptions.fromJson;

  @override
  InteractionOptionText get text;
  @override
  bool get correctOption;
  @override
  @JsonKey(ignore: true)
  _$$_InteractionOptionsCopyWith<_$_InteractionOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionOptionText _$InteractionOptionTextFromJson(
    Map<String, dynamic> json) {
  return _InteractionOptionText.fromJson(json);
}

/// @nodoc
mixin _$InteractionOptionText {
  int get position => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractionOptionTextCopyWith<InteractionOptionText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionOptionTextCopyWith<$Res> {
  factory $InteractionOptionTextCopyWith(InteractionOptionText value,
          $Res Function(InteractionOptionText) then) =
      _$InteractionOptionTextCopyWithImpl<$Res, InteractionOptionText>;
  @useResult
  $Res call({int position, int start, int end, int length, String text});
}

/// @nodoc
class _$InteractionOptionTextCopyWithImpl<$Res,
        $Val extends InteractionOptionText>
    implements $InteractionOptionTextCopyWith<$Res> {
  _$InteractionOptionTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? start = null,
    Object? end = null,
    Object? length = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InteractionOptionTextCopyWith<$Res>
    implements $InteractionOptionTextCopyWith<$Res> {
  factory _$$_InteractionOptionTextCopyWith(_$_InteractionOptionText value,
          $Res Function(_$_InteractionOptionText) then) =
      __$$_InteractionOptionTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, int start, int end, int length, String text});
}

/// @nodoc
class __$$_InteractionOptionTextCopyWithImpl<$Res>
    extends _$InteractionOptionTextCopyWithImpl<$Res, _$_InteractionOptionText>
    implements _$$_InteractionOptionTextCopyWith<$Res> {
  __$$_InteractionOptionTextCopyWithImpl(_$_InteractionOptionText _value,
      $Res Function(_$_InteractionOptionText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? start = null,
    Object? end = null,
    Object? length = null,
    Object? text = null,
  }) {
    return _then(_$_InteractionOptionText(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InteractionOptionText implements _InteractionOptionText {
  const _$_InteractionOptionText(
      {required this.position,
      required this.start,
      required this.end,
      required this.length,
      required this.text});

  factory _$_InteractionOptionText.fromJson(Map<String, dynamic> json) =>
      _$$_InteractionOptionTextFromJson(json);

  @override
  final int position;
  @override
  final int start;
  @override
  final int end;
  @override
  final int length;
  @override
  final String text;

  @override
  String toString() {
    return 'InteractionOptionText(position: $position, start: $start, end: $end, length: $length, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionOptionText &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, start, end, length, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionOptionTextCopyWith<_$_InteractionOptionText> get copyWith =>
      __$$_InteractionOptionTextCopyWithImpl<_$_InteractionOptionText>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InteractionOptionTextToJson(
      this,
    );
  }
}

abstract class _InteractionOptionText implements InteractionOptionText {
  const factory _InteractionOptionText(
      {required final int position,
      required final int start,
      required final int end,
      required final int length,
      required final String text}) = _$_InteractionOptionText;

  factory _InteractionOptionText.fromJson(Map<String, dynamic> json) =
      _$_InteractionOptionText.fromJson;

  @override
  int get position;
  @override
  int get start;
  @override
  int get end;
  @override
  int get length;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_InteractionOptionTextCopyWith<_$_InteractionOptionText> get copyWith =>
      throw _privateConstructorUsedError;
}
