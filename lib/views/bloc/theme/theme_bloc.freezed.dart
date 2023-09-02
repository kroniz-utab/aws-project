// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeCopyWith<$Res> {
  factory _$$_ChangeCopyWith(_$_Change value, $Res Function(_$_Change) then) =
      __$$_ChangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_Change>
    implements _$$_ChangeCopyWith<$Res> {
  __$$_ChangeCopyWithImpl(_$_Change _value, $Res Function(_$_Change) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Change implements _Change {
  const _$_Change();

  @override
  String toString() {
    return 'ThemeEvent.change()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Change);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) {
    return change();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? change,
  }) {
    return change?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements ThemeEvent {
  const factory _Change() = _$_Change;
}

/// @nodoc
mixin _$ThemeState {
  String get path => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) morning,
    required TResult Function(String path) evening,
    required TResult Function(String path) night,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? morning,
    TResult? Function(String path)? evening,
    TResult? Function(String path)? night,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? morning,
    TResult Function(String path)? evening,
    TResult Function(String path)? night,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Morning value) morning,
    required TResult Function(_Evening value) evening,
    required TResult Function(_Night value) night,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Morning value)? morning,
    TResult? Function(_Evening value)? evening,
    TResult? Function(_Night value)? night,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Morning value)? morning,
    TResult Function(_Evening value)? evening,
    TResult Function(_Night value)? night,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MorningCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_MorningCopyWith(
          _$_Morning value, $Res Function(_$_Morning) then) =
      __$$_MorningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_MorningCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Morning>
    implements _$$_MorningCopyWith<$Res> {
  __$$_MorningCopyWithImpl(_$_Morning _value, $Res Function(_$_Morning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_Morning(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Morning implements _Morning {
  const _$_Morning(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ThemeState.morning(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Morning &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MorningCopyWith<_$_Morning> get copyWith =>
      __$$_MorningCopyWithImpl<_$_Morning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) morning,
    required TResult Function(String path) evening,
    required TResult Function(String path) night,
  }) {
    return morning(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? morning,
    TResult? Function(String path)? evening,
    TResult? Function(String path)? night,
  }) {
    return morning?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? morning,
    TResult Function(String path)? evening,
    TResult Function(String path)? night,
    required TResult orElse(),
  }) {
    if (morning != null) {
      return morning(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Morning value) morning,
    required TResult Function(_Evening value) evening,
    required TResult Function(_Night value) night,
  }) {
    return morning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Morning value)? morning,
    TResult? Function(_Evening value)? evening,
    TResult? Function(_Night value)? night,
  }) {
    return morning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Morning value)? morning,
    TResult Function(_Evening value)? evening,
    TResult Function(_Night value)? night,
    required TResult orElse(),
  }) {
    if (morning != null) {
      return morning(this);
    }
    return orElse();
  }
}

abstract class _Morning implements ThemeState {
  const factory _Morning(final String path) = _$_Morning;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_MorningCopyWith<_$_Morning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EveningCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_EveningCopyWith(
          _$_Evening value, $Res Function(_$_Evening) then) =
      __$$_EveningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_EveningCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Evening>
    implements _$$_EveningCopyWith<$Res> {
  __$$_EveningCopyWithImpl(_$_Evening _value, $Res Function(_$_Evening) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_Evening(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Evening implements _Evening {
  const _$_Evening(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ThemeState.evening(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Evening &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EveningCopyWith<_$_Evening> get copyWith =>
      __$$_EveningCopyWithImpl<_$_Evening>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) morning,
    required TResult Function(String path) evening,
    required TResult Function(String path) night,
  }) {
    return evening(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? morning,
    TResult? Function(String path)? evening,
    TResult? Function(String path)? night,
  }) {
    return evening?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? morning,
    TResult Function(String path)? evening,
    TResult Function(String path)? night,
    required TResult orElse(),
  }) {
    if (evening != null) {
      return evening(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Morning value) morning,
    required TResult Function(_Evening value) evening,
    required TResult Function(_Night value) night,
  }) {
    return evening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Morning value)? morning,
    TResult? Function(_Evening value)? evening,
    TResult? Function(_Night value)? night,
  }) {
    return evening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Morning value)? morning,
    TResult Function(_Evening value)? evening,
    TResult Function(_Night value)? night,
    required TResult orElse(),
  }) {
    if (evening != null) {
      return evening(this);
    }
    return orElse();
  }
}

abstract class _Evening implements ThemeState {
  const factory _Evening(final String path) = _$_Evening;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_EveningCopyWith<_$_Evening> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NightCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_NightCopyWith(_$_Night value, $Res Function(_$_Night) then) =
      __$$_NightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_NightCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Night>
    implements _$$_NightCopyWith<$Res> {
  __$$_NightCopyWithImpl(_$_Night _value, $Res Function(_$_Night) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_Night(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Night implements _Night {
  const _$_Night(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ThemeState.night(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Night &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NightCopyWith<_$_Night> get copyWith =>
      __$$_NightCopyWithImpl<_$_Night>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) morning,
    required TResult Function(String path) evening,
    required TResult Function(String path) night,
  }) {
    return night(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? morning,
    TResult? Function(String path)? evening,
    TResult? Function(String path)? night,
  }) {
    return night?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? morning,
    TResult Function(String path)? evening,
    TResult Function(String path)? night,
    required TResult orElse(),
  }) {
    if (night != null) {
      return night(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Morning value) morning,
    required TResult Function(_Evening value) evening,
    required TResult Function(_Night value) night,
  }) {
    return night(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Morning value)? morning,
    TResult? Function(_Evening value)? evening,
    TResult? Function(_Night value)? night,
  }) {
    return night?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Morning value)? morning,
    TResult Function(_Evening value)? evening,
    TResult Function(_Night value)? night,
    required TResult orElse(),
  }) {
    if (night != null) {
      return night(this);
    }
    return orElse();
  }
}

abstract class _Night implements ThemeState {
  const factory _Night(final String path) = _$_Night;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_NightCopyWith<_$_Night> get copyWith =>
      throw _privateConstructorUsedError;
}
