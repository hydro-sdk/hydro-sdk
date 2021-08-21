// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiConstMap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiConstMapTearOff {
  const _$SwidiConstMapTearOff();

  _$SwidiConstMapCtor call(
      {required List<Tuple2<SwidiConst, SwidiConst>> entries}) {
    return _$SwidiConstMapCtor(
      entries: entries,
    );
  }
}

/// @nodoc
const $SwidiConstMap = _$SwidiConstMapTearOff();

/// @nodoc
mixin _$SwidiConstMap {
  List<Tuple2<SwidiConst, SwidiConst>> get entries =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiConstMapCopyWith<SwidiConstMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiConstMapCopyWith<$Res> {
  factory $SwidiConstMapCopyWith(
          SwidiConstMap value, $Res Function(SwidiConstMap) then) =
      _$SwidiConstMapCopyWithImpl<$Res>;
  $Res call({List<Tuple2<SwidiConst, SwidiConst>> entries});
}

/// @nodoc
class _$SwidiConstMapCopyWithImpl<$Res>
    implements $SwidiConstMapCopyWith<$Res> {
  _$SwidiConstMapCopyWithImpl(this._value, this._then);

  final SwidiConstMap _value;
  // ignore: unused_field
  final $Res Function(SwidiConstMap) _then;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<SwidiConst, SwidiConst>>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiConstMapCtorCopyWith<$Res>
    implements $SwidiConstMapCopyWith<$Res> {
  factory _$$SwidiConstMapCtorCopyWith(
          _$SwidiConstMapCtor value, $Res Function(_$SwidiConstMapCtor) then) =
      __$$SwidiConstMapCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<Tuple2<SwidiConst, SwidiConst>> entries});
}

/// @nodoc
class __$$SwidiConstMapCtorCopyWithImpl<$Res>
    extends _$SwidiConstMapCopyWithImpl<$Res>
    implements _$$SwidiConstMapCtorCopyWith<$Res> {
  __$$SwidiConstMapCtorCopyWithImpl(
      _$SwidiConstMapCtor _value, $Res Function(_$SwidiConstMapCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiConstMapCtor));

  @override
  _$SwidiConstMapCtor get _value => super._value as _$SwidiConstMapCtor;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(_$SwidiConstMapCtor(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<SwidiConst, SwidiConst>>,
    ));
  }
}

/// @nodoc

class _$_$SwidiConstMapCtor extends _$SwidiConstMapCtor {
  _$_$SwidiConstMapCtor({required this.entries}) : super._();

  @override
  final List<Tuple2<SwidiConst, SwidiConst>> entries;

  @override
  String toString() {
    return 'SwidiConstMap(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiConstMapCtor &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entries);

  @JsonKey(ignore: true)
  @override
  _$$SwidiConstMapCtorCopyWith<_$SwidiConstMapCtor> get copyWith =>
      __$$SwidiConstMapCtorCopyWithImpl<_$SwidiConstMapCtor>(this, _$identity);
}

abstract class _$SwidiConstMapCtor extends SwidiConstMap {
  factory _$SwidiConstMapCtor(
          {required List<Tuple2<SwidiConst, SwidiConst>> entries}) =
      _$_$SwidiConstMapCtor;
  _$SwidiConstMapCtor._() : super._();

  @override
  List<Tuple2<SwidiConst, SwidiConst>> get entries =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiConstMapCtorCopyWith<_$SwidiConstMapCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
