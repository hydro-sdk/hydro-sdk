// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiConst.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiConstTearOff {
  const _$SwidiConstTearOff();

// ignore: unused_element
  _$FromSwidiConstNumber fromSwidiConstNumber(
      {@required SwidiConstNumber swidiConstNumber}) {
    return _$FromSwidiConstNumber(
      swidiConstNumber: swidiConstNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiConst = _$SwidiConstTearOff();

/// @nodoc
mixin _$SwidiConst {
  SwidiConstNumber get swidiConstNumber;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fromSwidiConstNumber(SwidiConstNumber swidiConstNumber),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidiConstNumber(SwidiConstNumber swidiConstNumber),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fromSwidiConstNumber(_$FromSwidiConstNumber value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidiConstNumber(_$FromSwidiConstNumber value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SwidiConstCopyWith<SwidiConst> get copyWith;
}

/// @nodoc
abstract class $SwidiConstCopyWith<$Res> {
  factory $SwidiConstCopyWith(
          SwidiConst value, $Res Function(SwidiConst) then) =
      _$SwidiConstCopyWithImpl<$Res>;
  $Res call({SwidiConstNumber swidiConstNumber});

  $SwidiConstNumberCopyWith<$Res> get swidiConstNumber;
}

/// @nodoc
class _$SwidiConstCopyWithImpl<$Res> implements $SwidiConstCopyWith<$Res> {
  _$SwidiConstCopyWithImpl(this._value, this._then);

  final SwidiConst _value;
  // ignore: unused_field
  final $Res Function(SwidiConst) _then;

  @override
  $Res call({
    Object swidiConstNumber = freezed,
  }) {
    return _then(_value.copyWith(
      swidiConstNumber: swidiConstNumber == freezed
          ? _value.swidiConstNumber
          : swidiConstNumber as SwidiConstNumber,
    ));
  }

  @override
  $SwidiConstNumberCopyWith<$Res> get swidiConstNumber {
    if (_value.swidiConstNumber == null) {
      return null;
    }
    return $SwidiConstNumberCopyWith<$Res>(_value.swidiConstNumber, (value) {
      return _then(_value.copyWith(swidiConstNumber: value));
    });
  }
}

/// @nodoc
abstract class _$$FromSwidiConstNumberCopyWith<$Res>
    implements $SwidiConstCopyWith<$Res> {
  factory _$$FromSwidiConstNumberCopyWith(_$FromSwidiConstNumber value,
          $Res Function(_$FromSwidiConstNumber) then) =
      __$$FromSwidiConstNumberCopyWithImpl<$Res>;
  @override
  $Res call({SwidiConstNumber swidiConstNumber});

  @override
  $SwidiConstNumberCopyWith<$Res> get swidiConstNumber;
}

/// @nodoc
class __$$FromSwidiConstNumberCopyWithImpl<$Res>
    extends _$SwidiConstCopyWithImpl<$Res>
    implements _$$FromSwidiConstNumberCopyWith<$Res> {
  __$$FromSwidiConstNumberCopyWithImpl(_$FromSwidiConstNumber _value,
      $Res Function(_$FromSwidiConstNumber) _then)
      : super(_value, (v) => _then(v as _$FromSwidiConstNumber));

  @override
  _$FromSwidiConstNumber get _value => super._value as _$FromSwidiConstNumber;

  @override
  $Res call({
    Object swidiConstNumber = freezed,
  }) {
    return _then(_$FromSwidiConstNumber(
      swidiConstNumber: swidiConstNumber == freezed
          ? _value.swidiConstNumber
          : swidiConstNumber as SwidiConstNumber,
    ));
  }
}

/// @nodoc
class _$_$FromSwidiConstNumber implements _$FromSwidiConstNumber {
  const _$_$FromSwidiConstNumber({@required this.swidiConstNumber})
      : assert(swidiConstNumber != null);

  @override
  final SwidiConstNumber swidiConstNumber;

  @override
  String toString() {
    return 'SwidiConst.fromSwidiConstNumber(swidiConstNumber: $swidiConstNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidiConstNumber &&
            (identical(other.swidiConstNumber, swidiConstNumber) ||
                const DeepCollectionEquality()
                    .equals(other.swidiConstNumber, swidiConstNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidiConstNumber);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidiConstNumberCopyWith<_$FromSwidiConstNumber> get copyWith =>
      __$$FromSwidiConstNumberCopyWithImpl<_$FromSwidiConstNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fromSwidiConstNumber(SwidiConstNumber swidiConstNumber),
  }) {
    assert(fromSwidiConstNumber != null);
    return fromSwidiConstNumber(swidiConstNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidiConstNumber(SwidiConstNumber swidiConstNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidiConstNumber != null) {
      return fromSwidiConstNumber(swidiConstNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fromSwidiConstNumber(_$FromSwidiConstNumber value),
  }) {
    assert(fromSwidiConstNumber != null);
    return fromSwidiConstNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidiConstNumber(_$FromSwidiConstNumber value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidiConstNumber != null) {
      return fromSwidiConstNumber(this);
    }
    return orElse();
  }
}

abstract class _$FromSwidiConstNumber implements SwidiConst {
  const factory _$FromSwidiConstNumber(
      {@required SwidiConstNumber swidiConstNumber}) = _$_$FromSwidiConstNumber;

  @override
  SwidiConstNumber get swidiConstNumber;
  @override
  @JsonKey(ignore: true)
  _$$FromSwidiConstNumberCopyWith<_$FromSwidiConstNumber> get copyWith;
}
