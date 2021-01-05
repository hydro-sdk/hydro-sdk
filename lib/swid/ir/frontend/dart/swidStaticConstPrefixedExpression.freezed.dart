// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidStaticConstPrefixedExpression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidStaticConstPrefixedExpression _$SwidStaticConstPrefixedExpressionFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstPrefixedExpressionTearOff {
  const _$SwidStaticConstPrefixedExpressionTearOff();

// ignore: unused_element
  _$Data call({@required String prefix, @required SwidStaticConst expression}) {
    return _$Data(
      prefix: prefix,
      expression: expression,
    );
  }

// ignore: unused_element
  SwidStaticConstPrefixedExpression fromJson(Map<String, Object> json) {
    return SwidStaticConstPrefixedExpression.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidStaticConstPrefixedExpression =
    _$SwidStaticConstPrefixedExpressionTearOff();

/// @nodoc
mixin _$SwidStaticConstPrefixedExpression {
  String get prefix;
  SwidStaticConst get expression;

  Map<String, dynamic> toJson();
  $SwidStaticConstPrefixedExpressionCopyWith<SwidStaticConstPrefixedExpression>
      get copyWith;
}

/// @nodoc
abstract class $SwidStaticConstPrefixedExpressionCopyWith<$Res> {
  factory $SwidStaticConstPrefixedExpressionCopyWith(
          SwidStaticConstPrefixedExpression value,
          $Res Function(SwidStaticConstPrefixedExpression) then) =
      _$SwidStaticConstPrefixedExpressionCopyWithImpl<$Res>;
  $Res call({String prefix, SwidStaticConst expression});

  $SwidStaticConstCopyWith<$Res> get expression;
}

/// @nodoc
class _$SwidStaticConstPrefixedExpressionCopyWithImpl<$Res>
    implements $SwidStaticConstPrefixedExpressionCopyWith<$Res> {
  _$SwidStaticConstPrefixedExpressionCopyWithImpl(this._value, this._then);

  final SwidStaticConstPrefixedExpression _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstPrefixedExpression) _then;

  @override
  $Res call({
    Object prefix = freezed,
    Object expression = freezed,
  }) {
    return _then(_value.copyWith(
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      expression: expression == freezed
          ? _value.expression
          : expression as SwidStaticConst,
    ));
  }

  @override
  $SwidStaticConstCopyWith<$Res> get expression {
    if (_value.expression == null) {
      return null;
    }
    return $SwidStaticConstCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstPrefixedExpressionCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({String prefix, SwidStaticConst expression});

  @override
  $SwidStaticConstCopyWith<$Res> get expression;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstPrefixedExpressionCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object prefix = freezed,
    Object expression = freezed,
  }) {
    return _then(_$Data(
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      expression: expression == freezed
          ? _value.expression
          : expression as SwidStaticConst,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data({@required this.prefix, @required this.expression})
      : assert(prefix != null),
        assert(expression != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String prefix;
  @override
  final SwidStaticConst expression;

  @override
  String toString() {
    return 'SwidStaticConstPrefixedExpression(prefix: $prefix, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(expression);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidStaticConstPrefixedExpression {
  factory _$Data(
      {@required String prefix,
      @required SwidStaticConst expression}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get prefix;
  @override
  SwidStaticConst get expression;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
