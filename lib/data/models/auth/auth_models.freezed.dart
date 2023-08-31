// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModels _$AuthModelsFromJson(Map<String, dynamic> json) {
  return _AuthModels.fromJson(json);
}

/// @nodoc
mixin _$AuthModels {
  String get status => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthModelsCopyWith<AuthModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelsCopyWith<$Res> {
  factory $AuthModelsCopyWith(
          AuthModels value, $Res Function(AuthModels) then) =
      _$AuthModelsCopyWithImpl<$Res, AuthModels>;
  @useResult
  $Res call({String status, String token});
}

/// @nodoc
class _$AuthModelsCopyWithImpl<$Res, $Val extends AuthModels>
    implements $AuthModelsCopyWith<$Res> {
  _$AuthModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthModelsCopyWith<$Res>
    implements $AuthModelsCopyWith<$Res> {
  factory _$$_AuthModelsCopyWith(
          _$_AuthModels value, $Res Function(_$_AuthModels) then) =
      __$$_AuthModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String token});
}

/// @nodoc
class __$$_AuthModelsCopyWithImpl<$Res>
    extends _$AuthModelsCopyWithImpl<$Res, _$_AuthModels>
    implements _$$_AuthModelsCopyWith<$Res> {
  __$$_AuthModelsCopyWithImpl(
      _$_AuthModels _value, $Res Function(_$_AuthModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = null,
  }) {
    return _then(_$_AuthModels(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AuthModels extends _AuthModels {
  _$_AuthModels({required this.status, required this.token}) : super._();

  factory _$_AuthModels.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelsFromJson(json);

  @override
  final String status;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthModels(status: $status, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModels &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelsCopyWith<_$_AuthModels> get copyWith =>
      __$$_AuthModelsCopyWithImpl<_$_AuthModels>(this, _$identity);
}

abstract class _AuthModels extends AuthModels {
  factory _AuthModels(
      {required final String status,
      required final String token}) = _$_AuthModels;
  _AuthModels._() : super._();

  factory _AuthModels.fromJson(Map<String, dynamic> json) =
      _$_AuthModels.fromJson;

  @override
  String get status;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelsCopyWith<_$_AuthModels> get copyWith =>
      throw _privateConstructorUsedError;
}
