// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TsIrTearOff {
  const _$TsIrTearOff();

// ignore: unused_element
  _$FromTsEnum fromTsEnum({@required TsEnum tsEnum}) {
    return _$FromTsEnum(
      tsEnum: tsEnum,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TsIr = _$TsIrTearOff();

/// @nodoc
mixin _$TsIr {
  TsEnum get tsEnum;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromTsEnum(TsEnum tsEnum),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromTsEnum(TsEnum tsEnum),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromTsEnum(_$FromTsEnum value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromTsEnum(_$FromTsEnum value),
    @required Result orElse(),
  });

  $TsIrCopyWith<TsIr> get copyWith;
}

/// @nodoc
abstract class $TsIrCopyWith<$Res> {
  factory $TsIrCopyWith(TsIr value, $Res Function(TsIr) then) =
      _$TsIrCopyWithImpl<$Res>;
  $Res call({TsEnum tsEnum});
}

/// @nodoc
class _$TsIrCopyWithImpl<$Res> implements $TsIrCopyWith<$Res> {
  _$TsIrCopyWithImpl(this._value, this._then);

  final TsIr _value;
  // ignore: unused_field
  final $Res Function(TsIr) _then;

  @override
  $Res call({
    Object tsEnum = freezed,
  }) {
    return _then(_value.copyWith(
      tsEnum: tsEnum == freezed ? _value.tsEnum : tsEnum as TsEnum,
    ));
  }
}

/// @nodoc
abstract class _$$FromTsEnumCopyWith<$Res> implements $TsIrCopyWith<$Res> {
  factory _$$FromTsEnumCopyWith(
          _$FromTsEnum value, $Res Function(_$FromTsEnum) then) =
      __$$FromTsEnumCopyWithImpl<$Res>;
  @override
  $Res call({TsEnum tsEnum});
}

/// @nodoc
class __$$FromTsEnumCopyWithImpl<$Res> extends _$TsIrCopyWithImpl<$Res>
    implements _$$FromTsEnumCopyWith<$Res> {
  __$$FromTsEnumCopyWithImpl(
      _$FromTsEnum _value, $Res Function(_$FromTsEnum) _then)
      : super(_value, (v) => _then(v as _$FromTsEnum));

  @override
  _$FromTsEnum get _value => super._value as _$FromTsEnum;

  @override
  $Res call({
    Object tsEnum = freezed,
  }) {
    return _then(_$FromTsEnum(
      tsEnum: tsEnum == freezed ? _value.tsEnum : tsEnum as TsEnum,
    ));
  }
}

/// @nodoc
class _$_$FromTsEnum implements _$FromTsEnum {
  _$_$FromTsEnum({@required this.tsEnum}) : assert(tsEnum != null);

  @override
  final TsEnum tsEnum;

  @override
  String toString() {
    return 'TsIr.fromTsEnum(tsEnum: $tsEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromTsEnum &&
            (identical(other.tsEnum, tsEnum) ||
                const DeepCollectionEquality().equals(other.tsEnum, tsEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tsEnum);

  @override
  _$$FromTsEnumCopyWith<_$FromTsEnum> get copyWith =>
      __$$FromTsEnumCopyWithImpl<_$FromTsEnum>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromTsEnum(TsEnum tsEnum),
  }) {
    assert(fromTsEnum != null);
    return fromTsEnum(tsEnum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromTsEnum(TsEnum tsEnum),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromTsEnum != null) {
      return fromTsEnum(tsEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromTsEnum(_$FromTsEnum value),
  }) {
    assert(fromTsEnum != null);
    return fromTsEnum(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromTsEnum(_$FromTsEnum value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromTsEnum != null) {
      return fromTsEnum(this);
    }
    return orElse();
  }
}

abstract class _$FromTsEnum implements TsIr {
  factory _$FromTsEnum({@required TsEnum tsEnum}) = _$_$FromTsEnum;

  @override
  TsEnum get tsEnum;
  @override
  _$$FromTsEnumCopyWith<_$FromTsEnum> get copyWith;
}
