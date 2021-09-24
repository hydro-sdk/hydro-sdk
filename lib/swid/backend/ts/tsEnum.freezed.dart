// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsEnum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TsEnumTearOff {
  const _$TsEnumTearOff();

  _$TsEnumCtor call({required SwidEnum swidEnum}) {
    return _$TsEnumCtor(
      swidEnum: swidEnum,
    );
  }
}

/// @nodoc
const $TsEnum = _$TsEnumTearOff();

/// @nodoc
mixin _$TsEnum {
  SwidEnum get swidEnum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TsEnumCopyWith<TsEnum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsEnumCopyWith<$Res> {
  factory $TsEnumCopyWith(TsEnum value, $Res Function(TsEnum) then) =
      _$TsEnumCopyWithImpl<$Res>;
  $Res call({SwidEnum swidEnum});

  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class _$TsEnumCopyWithImpl<$Res> implements $TsEnumCopyWith<$Res> {
  _$TsEnumCopyWithImpl(this._value, this._then);

  final TsEnum _value;
  // ignore: unused_field
  final $Res Function(TsEnum) _then;

  @override
  $Res call({
    Object? swidEnum = freezed,
  }) {
    return _then(_value.copyWith(
      swidEnum: swidEnum == freezed
          ? _value.swidEnum
          : swidEnum // ignore: cast_nullable_to_non_nullable
              as SwidEnum,
    ));
  }

  @override
  $SwidEnumCopyWith<$Res> get swidEnum {
    return $SwidEnumCopyWith<$Res>(_value.swidEnum, (value) {
      return _then(_value.copyWith(swidEnum: value));
    });
  }
}

/// @nodoc
abstract class _$$TsEnumCtorCopyWith<$Res> implements $TsEnumCopyWith<$Res> {
  factory _$$TsEnumCtorCopyWith(
          _$TsEnumCtor value, $Res Function(_$TsEnumCtor) then) =
      __$$TsEnumCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidEnum swidEnum});

  @override
  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class __$$TsEnumCtorCopyWithImpl<$Res> extends _$TsEnumCopyWithImpl<$Res>
    implements _$$TsEnumCtorCopyWith<$Res> {
  __$$TsEnumCtorCopyWithImpl(
      _$TsEnumCtor _value, $Res Function(_$TsEnumCtor) _then)
      : super(_value, (v) => _then(v as _$TsEnumCtor));

  @override
  _$TsEnumCtor get _value => super._value as _$TsEnumCtor;

  @override
  $Res call({
    Object? swidEnum = freezed,
  }) {
    return _then(_$TsEnumCtor(
      swidEnum: swidEnum == freezed
          ? _value.swidEnum
          : swidEnum // ignore: cast_nullable_to_non_nullable
              as SwidEnum,
    ));
  }
}

/// @nodoc

class _$_$TsEnumCtor extends _$TsEnumCtor {
  _$_$TsEnumCtor({required this.swidEnum}) : super._();

  @override
  final SwidEnum swidEnum;

  @override
  String toString() {
    return 'TsEnum(swidEnum: $swidEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$TsEnumCtor &&
            (identical(other.swidEnum, swidEnum) ||
                const DeepCollectionEquality()
                    .equals(other.swidEnum, swidEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidEnum);

  @JsonKey(ignore: true)
  @override
  _$$TsEnumCtorCopyWith<_$TsEnumCtor> get copyWith =>
      __$$TsEnumCtorCopyWithImpl<_$TsEnumCtor>(this, _$identity);
}

abstract class _$TsEnumCtor extends TsEnum {
  factory _$TsEnumCtor({required SwidEnum swidEnum}) = _$_$TsEnumCtor;
  _$TsEnumCtor._() : super._();

  @override
  SwidEnum get swidEnum => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TsEnumCtorCopyWith<_$TsEnumCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
