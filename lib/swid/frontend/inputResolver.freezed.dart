// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inputResolver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResolvedInputTearOff {
  const _$ResolvedInputTearOff();

  _$ResolvedInputFromString fromString({required String str}) {
    return _$ResolvedInputFromString(
      str: str,
    );
  }

  _$ResolvedInputFromList fromList({required List<String> list}) {
    return _$ResolvedInputFromList(
      list: list,
    );
  }
}

/// @nodoc
const $ResolvedInput = _$ResolvedInputTearOff();

/// @nodoc
mixin _$ResolvedInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String str) fromString,
    required TResult Function(List<String> list) fromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String str)? fromString,
    TResult Function(List<String> list)? fromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ResolvedInputFromString value) fromString,
    required TResult Function(_$ResolvedInputFromList value) fromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ResolvedInputFromString value)? fromString,
    TResult Function(_$ResolvedInputFromList value)? fromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResolvedInputCopyWith<$Res> {
  factory $ResolvedInputCopyWith(
          ResolvedInput value, $Res Function(ResolvedInput) then) =
      _$ResolvedInputCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResolvedInputCopyWithImpl<$Res>
    implements $ResolvedInputCopyWith<$Res> {
  _$ResolvedInputCopyWithImpl(this._value, this._then);

  final ResolvedInput _value;
  // ignore: unused_field
  final $Res Function(ResolvedInput) _then;
}

/// @nodoc
abstract class _$$ResolvedInputFromStringCopyWith<$Res> {
  factory _$$ResolvedInputFromStringCopyWith(_$ResolvedInputFromString value,
          $Res Function(_$ResolvedInputFromString) then) =
      __$$ResolvedInputFromStringCopyWithImpl<$Res>;
  $Res call({String str});
}

/// @nodoc
class __$$ResolvedInputFromStringCopyWithImpl<$Res>
    extends _$ResolvedInputCopyWithImpl<$Res>
    implements _$$ResolvedInputFromStringCopyWith<$Res> {
  __$$ResolvedInputFromStringCopyWithImpl(_$ResolvedInputFromString _value,
      $Res Function(_$ResolvedInputFromString) _then)
      : super(_value, (v) => _then(v as _$ResolvedInputFromString));

  @override
  _$ResolvedInputFromString get _value =>
      super._value as _$ResolvedInputFromString;

  @override
  $Res call({
    Object? str = freezed,
  }) {
    return _then(_$ResolvedInputFromString(
      str: str == freezed
          ? _value.str
          : str // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ResolvedInputFromString implements _$ResolvedInputFromString {
  const _$_$ResolvedInputFromString({required this.str});

  @override
  final String str;

  @override
  String toString() {
    return 'ResolvedInput.fromString(str: $str)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ResolvedInputFromString &&
            (identical(other.str, str) ||
                const DeepCollectionEquality().equals(other.str, str)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(str);

  @JsonKey(ignore: true)
  @override
  _$$ResolvedInputFromStringCopyWith<_$ResolvedInputFromString> get copyWith =>
      __$$ResolvedInputFromStringCopyWithImpl<_$ResolvedInputFromString>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String str) fromString,
    required TResult Function(List<String> list) fromList,
  }) {
    return fromString(str);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String str)? fromString,
    TResult Function(List<String> list)? fromList,
    required TResult orElse(),
  }) {
    if (fromString != null) {
      return fromString(str);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ResolvedInputFromString value) fromString,
    required TResult Function(_$ResolvedInputFromList value) fromList,
  }) {
    return fromString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ResolvedInputFromString value)? fromString,
    TResult Function(_$ResolvedInputFromList value)? fromList,
    required TResult orElse(),
  }) {
    if (fromString != null) {
      return fromString(this);
    }
    return orElse();
  }
}

abstract class _$ResolvedInputFromString implements ResolvedInput {
  const factory _$ResolvedInputFromString({required String str}) =
      _$_$ResolvedInputFromString;

  String get str => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ResolvedInputFromStringCopyWith<_$ResolvedInputFromString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResolvedInputFromListCopyWith<$Res> {
  factory _$$ResolvedInputFromListCopyWith(_$ResolvedInputFromList value,
          $Res Function(_$ResolvedInputFromList) then) =
      __$$ResolvedInputFromListCopyWithImpl<$Res>;
  $Res call({List<String> list});
}

/// @nodoc
class __$$ResolvedInputFromListCopyWithImpl<$Res>
    extends _$ResolvedInputCopyWithImpl<$Res>
    implements _$$ResolvedInputFromListCopyWith<$Res> {
  __$$ResolvedInputFromListCopyWithImpl(_$ResolvedInputFromList _value,
      $Res Function(_$ResolvedInputFromList) _then)
      : super(_value, (v) => _then(v as _$ResolvedInputFromList));

  @override
  _$ResolvedInputFromList get _value => super._value as _$ResolvedInputFromList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$ResolvedInputFromList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_$ResolvedInputFromList implements _$ResolvedInputFromList {
  const _$_$ResolvedInputFromList({required this.list});

  @override
  final List<String> list;

  @override
  String toString() {
    return 'ResolvedInput.fromList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ResolvedInputFromList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$$ResolvedInputFromListCopyWith<_$ResolvedInputFromList> get copyWith =>
      __$$ResolvedInputFromListCopyWithImpl<_$ResolvedInputFromList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String str) fromString,
    required TResult Function(List<String> list) fromList,
  }) {
    return fromList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String str)? fromString,
    TResult Function(List<String> list)? fromList,
    required TResult orElse(),
  }) {
    if (fromList != null) {
      return fromList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ResolvedInputFromString value) fromString,
    required TResult Function(_$ResolvedInputFromList value) fromList,
  }) {
    return fromList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ResolvedInputFromString value)? fromString,
    TResult Function(_$ResolvedInputFromList value)? fromList,
    required TResult orElse(),
  }) {
    if (fromList != null) {
      return fromList(this);
    }
    return orElse();
  }
}

abstract class _$ResolvedInputFromList implements ResolvedInput {
  const factory _$ResolvedInputFromList({required List<String> list}) =
      _$_$ResolvedInputFromList;

  List<String> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ResolvedInputFromListCopyWith<_$ResolvedInputFromList> get copyWith =>
      throw _privateConstructorUsedError;
}
