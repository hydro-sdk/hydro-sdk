// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiFunctionDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiFunctionDeclarationTearOff {
  const _$SwidiFunctionDeclarationTearOff();

// ignore: unused_element
  _$SwidiFunctionDeclarationCtor call(
      {@required String name,
      @required String returnType,
      @required List<SwidiPositionalParameter> positionalParameters}) {
    return _$SwidiFunctionDeclarationCtor(
      name: name,
      returnType: returnType,
      positionalParameters: positionalParameters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiFunctionDeclaration = _$SwidiFunctionDeclarationTearOff();

/// @nodoc
mixin _$SwidiFunctionDeclaration {
  String get name;
  String get returnType;
  List<SwidiPositionalParameter> get positionalParameters;

  $SwidiFunctionDeclarationCopyWith<SwidiFunctionDeclaration> get copyWith;
}

/// @nodoc
abstract class $SwidiFunctionDeclarationCopyWith<$Res> {
  factory $SwidiFunctionDeclarationCopyWith(SwidiFunctionDeclaration value,
          $Res Function(SwidiFunctionDeclaration) then) =
      _$SwidiFunctionDeclarationCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String returnType,
      List<SwidiPositionalParameter> positionalParameters});
}

/// @nodoc
class _$SwidiFunctionDeclarationCopyWithImpl<$Res>
    implements $SwidiFunctionDeclarationCopyWith<$Res> {
  _$SwidiFunctionDeclarationCopyWithImpl(this._value, this._then);

  final SwidiFunctionDeclaration _value;
  // ignore: unused_field
  final $Res Function(SwidiFunctionDeclaration) _then;

  @override
  $Res call({
    Object name = freezed,
    Object returnType = freezed,
    Object positionalParameters = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      returnType:
          returnType == freezed ? _value.returnType : returnType as String,
      positionalParameters: positionalParameters == freezed
          ? _value.positionalParameters
          : positionalParameters as List<SwidiPositionalParameter>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiFunctionDeclarationCtorCopyWith<$Res>
    implements $SwidiFunctionDeclarationCopyWith<$Res> {
  factory _$$SwidiFunctionDeclarationCtorCopyWith(
          _$SwidiFunctionDeclarationCtor value,
          $Res Function(_$SwidiFunctionDeclarationCtor) then) =
      __$$SwidiFunctionDeclarationCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String returnType,
      List<SwidiPositionalParameter> positionalParameters});
}

/// @nodoc
class __$$SwidiFunctionDeclarationCtorCopyWithImpl<$Res>
    extends _$SwidiFunctionDeclarationCopyWithImpl<$Res>
    implements _$$SwidiFunctionDeclarationCtorCopyWith<$Res> {
  __$$SwidiFunctionDeclarationCtorCopyWithImpl(
      _$SwidiFunctionDeclarationCtor _value,
      $Res Function(_$SwidiFunctionDeclarationCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiFunctionDeclarationCtor));

  @override
  _$SwidiFunctionDeclarationCtor get _value =>
      super._value as _$SwidiFunctionDeclarationCtor;

  @override
  $Res call({
    Object name = freezed,
    Object returnType = freezed,
    Object positionalParameters = freezed,
  }) {
    return _then(_$SwidiFunctionDeclarationCtor(
      name: name == freezed ? _value.name : name as String,
      returnType:
          returnType == freezed ? _value.returnType : returnType as String,
      positionalParameters: positionalParameters == freezed
          ? _value.positionalParameters
          : positionalParameters as List<SwidiPositionalParameter>,
    ));
  }
}

/// @nodoc
class _$_$SwidiFunctionDeclarationCtor
    implements _$SwidiFunctionDeclarationCtor {
  const _$_$SwidiFunctionDeclarationCtor(
      {@required this.name,
      @required this.returnType,
      @required this.positionalParameters})
      : assert(name != null),
        assert(returnType != null),
        assert(positionalParameters != null);

  @override
  final String name;
  @override
  final String returnType;
  @override
  final List<SwidiPositionalParameter> positionalParameters;

  @override
  String toString() {
    return 'SwidiFunctionDeclaration(name: $name, returnType: $returnType, positionalParameters: $positionalParameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiFunctionDeclarationCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.positionalParameters, positionalParameters) ||
                const DeepCollectionEquality()
                    .equals(other.positionalParameters, positionalParameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(positionalParameters);

  @override
  _$$SwidiFunctionDeclarationCtorCopyWith<_$SwidiFunctionDeclarationCtor>
      get copyWith => __$$SwidiFunctionDeclarationCtorCopyWithImpl<
          _$SwidiFunctionDeclarationCtor>(this, _$identity);
}

abstract class _$SwidiFunctionDeclarationCtor
    implements SwidiFunctionDeclaration {
  const factory _$SwidiFunctionDeclarationCtor(
          {@required String name,
          @required String returnType,
          @required List<SwidiPositionalParameter> positionalParameters}) =
      _$_$SwidiFunctionDeclarationCtor;

  @override
  String get name;
  @override
  String get returnType;
  @override
  List<SwidiPositionalParameter> get positionalParameters;
  @override
  _$$SwidiFunctionDeclarationCtorCopyWith<_$SwidiFunctionDeclarationCtor>
      get copyWith;
}
