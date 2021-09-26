// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiTypeArgumentList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiTypeArgumentListTearOff {
  const _$SwidiTypeArgumentListTearOff();

  _$SwidiTypeArgumentListCtor call({required List<SwidiInterface> typeList}) {
    return _$SwidiTypeArgumentListCtor(
      typeList: typeList,
    );
  }
}

/// @nodoc
const $SwidiTypeArgumentList = _$SwidiTypeArgumentListTearOff();

/// @nodoc
mixin _$SwidiTypeArgumentList {
  List<SwidiInterface> get typeList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiTypeArgumentListCopyWith<SwidiTypeArgumentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiTypeArgumentListCopyWith<$Res> {
  factory $SwidiTypeArgumentListCopyWith(SwidiTypeArgumentList value,
          $Res Function(SwidiTypeArgumentList) then) =
      _$SwidiTypeArgumentListCopyWithImpl<$Res>;
  $Res call({List<SwidiInterface> typeList});
}

/// @nodoc
class _$SwidiTypeArgumentListCopyWithImpl<$Res>
    implements $SwidiTypeArgumentListCopyWith<$Res> {
  _$SwidiTypeArgumentListCopyWithImpl(this._value, this._then);

  final SwidiTypeArgumentList _value;
  // ignore: unused_field
  final $Res Function(SwidiTypeArgumentList) _then;

  @override
  $Res call({
    Object? typeList = freezed,
  }) {
    return _then(_value.copyWith(
      typeList: typeList == freezed
          ? _value.typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<SwidiInterface>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiTypeArgumentListCtorCopyWith<$Res>
    implements $SwidiTypeArgumentListCopyWith<$Res> {
  factory _$$SwidiTypeArgumentListCtorCopyWith(
          _$SwidiTypeArgumentListCtor value,
          $Res Function(_$SwidiTypeArgumentListCtor) then) =
      __$$SwidiTypeArgumentListCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<SwidiInterface> typeList});
}

/// @nodoc
class __$$SwidiTypeArgumentListCtorCopyWithImpl<$Res>
    extends _$SwidiTypeArgumentListCopyWithImpl<$Res>
    implements _$$SwidiTypeArgumentListCtorCopyWith<$Res> {
  __$$SwidiTypeArgumentListCtorCopyWithImpl(_$SwidiTypeArgumentListCtor _value,
      $Res Function(_$SwidiTypeArgumentListCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiTypeArgumentListCtor));

  @override
  _$SwidiTypeArgumentListCtor get _value =>
      super._value as _$SwidiTypeArgumentListCtor;

  @override
  $Res call({
    Object? typeList = freezed,
  }) {
    return _then(_$SwidiTypeArgumentListCtor(
      typeList: typeList == freezed
          ? _value.typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<SwidiInterface>,
    ));
  }
}

/// @nodoc

class _$_$SwidiTypeArgumentListCtor extends _$SwidiTypeArgumentListCtor {
  _$_$SwidiTypeArgumentListCtor({required this.typeList}) : super._();

  @override
  final List<SwidiInterface> typeList;

  @override
  String toString() {
    return 'SwidiTypeArgumentList(typeList: $typeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiTypeArgumentListCtor &&
            (identical(other.typeList, typeList) ||
                const DeepCollectionEquality()
                    .equals(other.typeList, typeList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(typeList);

  @JsonKey(ignore: true)
  @override
  _$$SwidiTypeArgumentListCtorCopyWith<_$SwidiTypeArgumentListCtor>
      get copyWith => __$$SwidiTypeArgumentListCtorCopyWithImpl<
          _$SwidiTypeArgumentListCtor>(this, _$identity);
}

abstract class _$SwidiTypeArgumentListCtor extends SwidiTypeArgumentList {
  factory _$SwidiTypeArgumentListCtor(
      {required List<SwidiInterface> typeList}) = _$_$SwidiTypeArgumentListCtor;
  _$SwidiTypeArgumentListCtor._() : super._();

  @override
  List<SwidiInterface> get typeList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiTypeArgumentListCtorCopyWith<_$SwidiTypeArgumentListCtor>
      get copyWith => throw _privateConstructorUsedError;
}
