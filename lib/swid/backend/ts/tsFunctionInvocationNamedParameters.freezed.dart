// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsFunctionInvocationNamedParameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TsFunctionInvocationNamedParameters
    _$TsFunctionInvocationNamedParametersFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'fromSpread':
      return _$FromSpread.fromJson(json);
    case 'fromKeyValue':
      return _$FromKeyValue.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersTearOff {
  const _$TsFunctionInvocationNamedParametersTearOff();

// ignore: unused_element
  _$FromSpread fromSpread(
      {required
          TsFunctionInvocationNamedParametersSpread
              tsFunctionInvocationNamedParametersSpread}) {
    return _$FromSpread(
      tsFunctionInvocationNamedParametersSpread:
          tsFunctionInvocationNamedParametersSpread,
    );
  }

// ignore: unused_element
  _$FromKeyValue fromKeyValue(
      {required
          TsFunctionInvocationNamedParametersKeyValue
              tsFunctionInvocationNamedParametersKeyValue}) {
    return _$FromKeyValue(
      tsFunctionInvocationNamedParametersKeyValue:
          tsFunctionInvocationNamedParametersKeyValue,
    );
  }

// ignore: unused_element
  TsFunctionInvocationNamedParameters fromJson(Map<String, Object> json) {
    return TsFunctionInvocationNamedParameters.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TsFunctionInvocationNamedParameters =
    _$TsFunctionInvocationNamedParametersTearOff();

/// @nodoc
mixin _$TsFunctionInvocationNamedParameters {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    required
        TResult fromSpread(
            TsFunctionInvocationNamedParametersSpread
                tsFunctionInvocationNamedParametersSpread),
    required
        TResult fromKeyValue(
            TsFunctionInvocationNamedParametersKeyValue
                tsFunctionInvocationNamedParametersKeyValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSpread(
        TsFunctionInvocationNamedParametersSpread
            tsFunctionInvocationNamedParametersSpread)?,
    TResult fromKeyValue(
        TsFunctionInvocationNamedParametersKeyValue
            tsFunctionInvocationNamedParametersKeyValue)?,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required TResult fromSpread(_$FromSpread value),
    required TResult fromKeyValue(_$FromKeyValue value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSpread(_$FromSpread value)?,
    TResult fromKeyValue(_$FromKeyValue value)?,
    required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $TsFunctionInvocationNamedParametersCopyWith<$Res> {
  factory $TsFunctionInvocationNamedParametersCopyWith(
          TsFunctionInvocationNamedParameters value,
          $Res Function(TsFunctionInvocationNamedParameters) then) =
      _$TsFunctionInvocationNamedParametersCopyWithImpl<$Res>;
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersCopyWithImpl<$Res>
    implements $TsFunctionInvocationNamedParametersCopyWith<$Res> {
  _$TsFunctionInvocationNamedParametersCopyWithImpl(this._value, this._then);

  final TsFunctionInvocationNamedParameters _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocationNamedParameters?) _then;
}

/// @nodoc
abstract class _$$FromSpreadCopyWith<$Res> {
  factory _$$FromSpreadCopyWith(
          _$FromSpread value, $Res Function(_$FromSpread) then) =
      __$$FromSpreadCopyWithImpl<$Res>;
  $Res call(
      {TsFunctionInvocationNamedParametersSpread?
          tsFunctionInvocationNamedParametersSpread});

  $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res>
      get tsFunctionInvocationNamedParametersSpread;
}

/// @nodoc
class __$$FromSpreadCopyWithImpl<$Res>
    extends _$TsFunctionInvocationNamedParametersCopyWithImpl<$Res>
    implements _$$FromSpreadCopyWith<$Res> {
  __$$FromSpreadCopyWithImpl(
      _$FromSpread _value, $Res Function(_$FromSpread) _then)
      : super(_value, (v) => _then(v as _$FromSpread));

  @override
  _$FromSpread get _value => super._value as _$FromSpread;

  @override
  $Res call({
    Object? tsFunctionInvocationNamedParametersSpread = freezed,
  }) {
    return _then(_$FromSpread(
      tsFunctionInvocationNamedParametersSpread:
          tsFunctionInvocationNamedParametersSpread == freezed
              ? _value.tsFunctionInvocationNamedParametersSpread
              : (tsFunctionInvocationNamedParametersSpread
                  as TsFunctionInvocationNamedParametersSpread?)!,
    ));
  }

  @override
  $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res>
      get tsFunctionInvocationNamedParametersSpread {
    if (_value.tsFunctionInvocationNamedParametersSpread == null) {
      return null;
    }
    return $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res>(
        _value.tsFunctionInvocationNamedParametersSpread, (value) {
      return _then(
          _value.copyWith(tsFunctionInvocationNamedParametersSpread: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSpread implements _$FromSpread {
  _$_$FromSpread({required this.tsFunctionInvocationNamedParametersSpread})
      : assert(tsFunctionInvocationNamedParametersSpread != null);

  factory _$_$FromSpread.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSpreadFromJson(json);

  @override
  final TsFunctionInvocationNamedParametersSpread
      tsFunctionInvocationNamedParametersSpread;

  @override
  String toString() {
    return 'TsFunctionInvocationNamedParameters.fromSpread(tsFunctionInvocationNamedParametersSpread: $tsFunctionInvocationNamedParametersSpread)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSpread &&
            (identical(other.tsFunctionInvocationNamedParametersSpread,
                    tsFunctionInvocationNamedParametersSpread) ||
                const DeepCollectionEquality().equals(
                    other.tsFunctionInvocationNamedParametersSpread,
                    tsFunctionInvocationNamedParametersSpread)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(tsFunctionInvocationNamedParametersSpread);

  @JsonKey(ignore: true)
  @override
  _$$FromSpreadCopyWith<_$FromSpread> get copyWith =>
      __$$FromSpreadCopyWithImpl<_$FromSpread>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    required
        TResult fromSpread(
            TsFunctionInvocationNamedParametersSpread
                tsFunctionInvocationNamedParametersSpread),
    required
        TResult fromKeyValue(
            TsFunctionInvocationNamedParametersKeyValue
                tsFunctionInvocationNamedParametersKeyValue),
  }) {
    assert(fromSpread != null);
    assert(fromKeyValue != null);
    return fromSpread(tsFunctionInvocationNamedParametersSpread);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSpread(
        TsFunctionInvocationNamedParametersSpread
            tsFunctionInvocationNamedParametersSpread)?,
    TResult fromKeyValue(
        TsFunctionInvocationNamedParametersKeyValue
            tsFunctionInvocationNamedParametersKeyValue)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSpread != null) {
      return fromSpread(tsFunctionInvocationNamedParametersSpread);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required TResult fromSpread(_$FromSpread value),
    required TResult fromKeyValue(_$FromKeyValue value),
  }) {
    assert(fromSpread != null);
    assert(fromKeyValue != null);
    return fromSpread(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSpread(_$FromSpread value)?,
    TResult fromKeyValue(_$FromKeyValue value)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSpread != null) {
      return fromSpread(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSpreadToJson(this)..['runtimeType'] = 'fromSpread';
  }
}

abstract class _$FromSpread implements TsFunctionInvocationNamedParameters {
  factory _$FromSpread(
      {required
          TsFunctionInvocationNamedParametersSpread
              tsFunctionInvocationNamedParametersSpread}) = _$_$FromSpread;

  factory _$FromSpread.fromJson(Map<String, dynamic> json) =
      _$_$FromSpread.fromJson;

  TsFunctionInvocationNamedParametersSpread
      get tsFunctionInvocationNamedParametersSpread;
  @JsonKey(ignore: true)
  _$$FromSpreadCopyWith<_$FromSpread> get copyWith;
}

/// @nodoc
abstract class _$$FromKeyValueCopyWith<$Res> {
  factory _$$FromKeyValueCopyWith(
          _$FromKeyValue value, $Res Function(_$FromKeyValue) then) =
      __$$FromKeyValueCopyWithImpl<$Res>;
  $Res call(
      {TsFunctionInvocationNamedParametersKeyValue?
          tsFunctionInvocationNamedParametersKeyValue});

  $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res>
      get tsFunctionInvocationNamedParametersKeyValue;
}

/// @nodoc
class __$$FromKeyValueCopyWithImpl<$Res>
    extends _$TsFunctionInvocationNamedParametersCopyWithImpl<$Res>
    implements _$$FromKeyValueCopyWith<$Res> {
  __$$FromKeyValueCopyWithImpl(
      _$FromKeyValue _value, $Res Function(_$FromKeyValue) _then)
      : super(_value, (v) => _then(v as _$FromKeyValue));

  @override
  _$FromKeyValue get _value => super._value as _$FromKeyValue;

  @override
  $Res call({
    Object? tsFunctionInvocationNamedParametersKeyValue = freezed,
  }) {
    return _then(_$FromKeyValue(
      tsFunctionInvocationNamedParametersKeyValue:
          tsFunctionInvocationNamedParametersKeyValue == freezed
              ? _value.tsFunctionInvocationNamedParametersKeyValue
              : (tsFunctionInvocationNamedParametersKeyValue
                  as TsFunctionInvocationNamedParametersKeyValue?)!,
    ));
  }

  @override
  $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res>
      get tsFunctionInvocationNamedParametersKeyValue {
    if (_value.tsFunctionInvocationNamedParametersKeyValue == null) {
      return null;
    }
    return $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res>(
        _value.tsFunctionInvocationNamedParametersKeyValue, (value) {
      return _then(
          _value.copyWith(tsFunctionInvocationNamedParametersKeyValue: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromKeyValue implements _$FromKeyValue {
  _$_$FromKeyValue({required this.tsFunctionInvocationNamedParametersKeyValue})
      : assert(tsFunctionInvocationNamedParametersKeyValue != null);

  factory _$_$FromKeyValue.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromKeyValueFromJson(json);

  @override
  final TsFunctionInvocationNamedParametersKeyValue
      tsFunctionInvocationNamedParametersKeyValue;

  @override
  String toString() {
    return 'TsFunctionInvocationNamedParameters.fromKeyValue(tsFunctionInvocationNamedParametersKeyValue: $tsFunctionInvocationNamedParametersKeyValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromKeyValue &&
            (identical(other.tsFunctionInvocationNamedParametersKeyValue,
                    tsFunctionInvocationNamedParametersKeyValue) ||
                const DeepCollectionEquality().equals(
                    other.tsFunctionInvocationNamedParametersKeyValue,
                    tsFunctionInvocationNamedParametersKeyValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(tsFunctionInvocationNamedParametersKeyValue);

  @JsonKey(ignore: true)
  @override
  _$$FromKeyValueCopyWith<_$FromKeyValue> get copyWith =>
      __$$FromKeyValueCopyWithImpl<_$FromKeyValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    required
        TResult fromSpread(
            TsFunctionInvocationNamedParametersSpread
                tsFunctionInvocationNamedParametersSpread),
    required
        TResult fromKeyValue(
            TsFunctionInvocationNamedParametersKeyValue
                tsFunctionInvocationNamedParametersKeyValue),
  }) {
    assert(fromSpread != null);
    assert(fromKeyValue != null);
    return fromKeyValue(tsFunctionInvocationNamedParametersKeyValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSpread(
        TsFunctionInvocationNamedParametersSpread
            tsFunctionInvocationNamedParametersSpread)?,
    TResult fromKeyValue(
        TsFunctionInvocationNamedParametersKeyValue
            tsFunctionInvocationNamedParametersKeyValue)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromKeyValue != null) {
      return fromKeyValue(tsFunctionInvocationNamedParametersKeyValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required TResult fromSpread(_$FromSpread value),
    required TResult fromKeyValue(_$FromKeyValue value),
  }) {
    assert(fromSpread != null);
    assert(fromKeyValue != null);
    return fromKeyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSpread(_$FromSpread value)?,
    TResult fromKeyValue(_$FromKeyValue value)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromKeyValue != null) {
      return fromKeyValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromKeyValueToJson(this)..['runtimeType'] = 'fromKeyValue';
  }
}

abstract class _$FromKeyValue implements TsFunctionInvocationNamedParameters {
  factory _$FromKeyValue(
      {required
          TsFunctionInvocationNamedParametersKeyValue
              tsFunctionInvocationNamedParametersKeyValue}) = _$_$FromKeyValue;

  factory _$FromKeyValue.fromJson(Map<String, dynamic> json) =
      _$_$FromKeyValue.fromJson;

  TsFunctionInvocationNamedParametersKeyValue
      get tsFunctionInvocationNamedParametersKeyValue;
  @JsonKey(ignore: true)
  _$$FromKeyValueCopyWith<_$FromKeyValue> get copyWith;
}
