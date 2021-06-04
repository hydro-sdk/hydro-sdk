// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parserTestHarness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParserTestHarnessInputTearOff {
  const _$ParserTestHarnessInputTearOff();

  _$ParserTestHarnessInputFromString fromString({required String input}) {
    return _$ParserTestHarnessInputFromString(
      input: input,
    );
  }

  _$ParserTestHarnessInputFromList fromList({required List<String> inputs}) {
    return _$ParserTestHarnessInputFromList(
      inputs: inputs,
    );
  }
}

/// @nodoc
const $ParserTestHarnessInput = _$ParserTestHarnessInputTearOff();

/// @nodoc
mixin _$ParserTestHarnessInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) fromString,
    required TResult Function(List<String> inputs) fromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? fromString,
    TResult Function(List<String> inputs)? fromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ParserTestHarnessInputFromString value)
        fromString,
    required TResult Function(_$ParserTestHarnessInputFromList value) fromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ParserTestHarnessInputFromString value)? fromString,
    TResult Function(_$ParserTestHarnessInputFromList value)? fromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParserTestHarnessInputCopyWith<$Res> {
  factory $ParserTestHarnessInputCopyWith(ParserTestHarnessInput value,
          $Res Function(ParserTestHarnessInput) then) =
      _$ParserTestHarnessInputCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParserTestHarnessInputCopyWithImpl<$Res>
    implements $ParserTestHarnessInputCopyWith<$Res> {
  _$ParserTestHarnessInputCopyWithImpl(this._value, this._then);

  final ParserTestHarnessInput _value;
  // ignore: unused_field
  final $Res Function(ParserTestHarnessInput) _then;
}

/// @nodoc
abstract class _$$ParserTestHarnessInputFromStringCopyWith<$Res> {
  factory _$$ParserTestHarnessInputFromStringCopyWith(
          _$ParserTestHarnessInputFromString value,
          $Res Function(_$ParserTestHarnessInputFromString) then) =
      __$$ParserTestHarnessInputFromStringCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$ParserTestHarnessInputFromStringCopyWithImpl<$Res>
    extends _$ParserTestHarnessInputCopyWithImpl<$Res>
    implements _$$ParserTestHarnessInputFromStringCopyWith<$Res> {
  __$$ParserTestHarnessInputFromStringCopyWithImpl(
      _$ParserTestHarnessInputFromString _value,
      $Res Function(_$ParserTestHarnessInputFromString) _then)
      : super(_value, (v) => _then(v as _$ParserTestHarnessInputFromString));

  @override
  _$ParserTestHarnessInputFromString get _value =>
      super._value as _$ParserTestHarnessInputFromString;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$ParserTestHarnessInputFromString(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ParserTestHarnessInputFromString
    implements _$ParserTestHarnessInputFromString {
  const _$_$ParserTestHarnessInputFromString({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ParserTestHarnessInput.fromString(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ParserTestHarnessInputFromString &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$$ParserTestHarnessInputFromStringCopyWith<
          _$ParserTestHarnessInputFromString>
      get copyWith => __$$ParserTestHarnessInputFromStringCopyWithImpl<
          _$ParserTestHarnessInputFromString>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) fromString,
    required TResult Function(List<String> inputs) fromList,
  }) {
    return fromString(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? fromString,
    TResult Function(List<String> inputs)? fromList,
    required TResult orElse(),
  }) {
    if (fromString != null) {
      return fromString(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ParserTestHarnessInputFromString value)
        fromString,
    required TResult Function(_$ParserTestHarnessInputFromList value) fromList,
  }) {
    return fromString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ParserTestHarnessInputFromString value)? fromString,
    TResult Function(_$ParserTestHarnessInputFromList value)? fromList,
    required TResult orElse(),
  }) {
    if (fromString != null) {
      return fromString(this);
    }
    return orElse();
  }
}

abstract class _$ParserTestHarnessInputFromString
    implements ParserTestHarnessInput {
  const factory _$ParserTestHarnessInputFromString({required String input}) =
      _$_$ParserTestHarnessInputFromString;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ParserTestHarnessInputFromStringCopyWith<
          _$ParserTestHarnessInputFromString>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParserTestHarnessInputFromListCopyWith<$Res> {
  factory _$$ParserTestHarnessInputFromListCopyWith(
          _$ParserTestHarnessInputFromList value,
          $Res Function(_$ParserTestHarnessInputFromList) then) =
      __$$ParserTestHarnessInputFromListCopyWithImpl<$Res>;
  $Res call({List<String> inputs});
}

/// @nodoc
class __$$ParserTestHarnessInputFromListCopyWithImpl<$Res>
    extends _$ParserTestHarnessInputCopyWithImpl<$Res>
    implements _$$ParserTestHarnessInputFromListCopyWith<$Res> {
  __$$ParserTestHarnessInputFromListCopyWithImpl(
      _$ParserTestHarnessInputFromList _value,
      $Res Function(_$ParserTestHarnessInputFromList) _then)
      : super(_value, (v) => _then(v as _$ParserTestHarnessInputFromList));

  @override
  _$ParserTestHarnessInputFromList get _value =>
      super._value as _$ParserTestHarnessInputFromList;

  @override
  $Res call({
    Object? inputs = freezed,
  }) {
    return _then(_$ParserTestHarnessInputFromList(
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_$ParserTestHarnessInputFromList
    implements _$ParserTestHarnessInputFromList {
  const _$_$ParserTestHarnessInputFromList({required this.inputs});

  @override
  final List<String> inputs;

  @override
  String toString() {
    return 'ParserTestHarnessInput.fromList(inputs: $inputs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ParserTestHarnessInputFromList &&
            (identical(other.inputs, inputs) ||
                const DeepCollectionEquality().equals(other.inputs, inputs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inputs);

  @JsonKey(ignore: true)
  @override
  _$$ParserTestHarnessInputFromListCopyWith<_$ParserTestHarnessInputFromList>
      get copyWith => __$$ParserTestHarnessInputFromListCopyWithImpl<
          _$ParserTestHarnessInputFromList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) fromString,
    required TResult Function(List<String> inputs) fromList,
  }) {
    return fromList(inputs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? fromString,
    TResult Function(List<String> inputs)? fromList,
    required TResult orElse(),
  }) {
    if (fromList != null) {
      return fromList(inputs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ParserTestHarnessInputFromString value)
        fromString,
    required TResult Function(_$ParserTestHarnessInputFromList value) fromList,
  }) {
    return fromList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ParserTestHarnessInputFromString value)? fromString,
    TResult Function(_$ParserTestHarnessInputFromList value)? fromList,
    required TResult orElse(),
  }) {
    if (fromList != null) {
      return fromList(this);
    }
    return orElse();
  }
}

abstract class _$ParserTestHarnessInputFromList
    implements ParserTestHarnessInput {
  const factory _$ParserTestHarnessInputFromList(
      {required List<String> inputs}) = _$_$ParserTestHarnessInputFromList;

  List<String> get inputs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ParserTestHarnessInputFromListCopyWith<_$ParserTestHarnessInputFromList>
      get copyWith => throw _privateConstructorUsedError;
}
