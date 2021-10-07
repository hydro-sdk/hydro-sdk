// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiFunctionDeclarationNamedParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiFunctionDeclarationNamedParameterTearOff {
  const _$SwidiFunctionDeclarationNamedParameterTearOff();

  _$SwidiNamedParameterCtor call({required SwidiDeclaration declaration}) {
    return _$SwidiNamedParameterCtor(
      declaration: declaration,
    );
  }
}

/// @nodoc
const $SwidiFunctionDeclarationNamedParameter =
    _$SwidiFunctionDeclarationNamedParameterTearOff();

/// @nodoc
mixin _$SwidiFunctionDeclarationNamedParameter {
  SwidiDeclaration get declaration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiFunctionDeclarationNamedParameterCopyWith<
          SwidiFunctionDeclarationNamedParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiFunctionDeclarationNamedParameterCopyWith<$Res> {
  factory $SwidiFunctionDeclarationNamedParameterCopyWith(
          SwidiFunctionDeclarationNamedParameter value,
          $Res Function(SwidiFunctionDeclarationNamedParameter) then) =
      _$SwidiFunctionDeclarationNamedParameterCopyWithImpl<$Res>;
  $Res call({SwidiDeclaration declaration});

  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class _$SwidiFunctionDeclarationNamedParameterCopyWithImpl<$Res>
    implements $SwidiFunctionDeclarationNamedParameterCopyWith<$Res> {
  _$SwidiFunctionDeclarationNamedParameterCopyWithImpl(this._value, this._then);

  final SwidiFunctionDeclarationNamedParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiFunctionDeclarationNamedParameter) _then;

  @override
  $Res call({
    Object? declaration = freezed,
  }) {
    return _then(_value.copyWith(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration // ignore: cast_nullable_to_non_nullable
              as SwidiDeclaration,
    ));
  }

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration {
    return $SwidiDeclarationCopyWith<$Res>(_value.declaration, (value) {
      return _then(_value.copyWith(declaration: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiNamedParameterCtorCopyWith<$Res>
    implements $SwidiFunctionDeclarationNamedParameterCopyWith<$Res> {
  factory _$$SwidiNamedParameterCtorCopyWith(_$SwidiNamedParameterCtor value,
          $Res Function(_$SwidiNamedParameterCtor) then) =
      __$$SwidiNamedParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiDeclaration declaration});

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class __$$SwidiNamedParameterCtorCopyWithImpl<$Res>
    extends _$SwidiFunctionDeclarationNamedParameterCopyWithImpl<$Res>
    implements _$$SwidiNamedParameterCtorCopyWith<$Res> {
  __$$SwidiNamedParameterCtorCopyWithImpl(_$SwidiNamedParameterCtor _value,
      $Res Function(_$SwidiNamedParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiNamedParameterCtor));

  @override
  _$SwidiNamedParameterCtor get _value =>
      super._value as _$SwidiNamedParameterCtor;

  @override
  $Res call({
    Object? declaration = freezed,
  }) {
    return _then(_$SwidiNamedParameterCtor(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration // ignore: cast_nullable_to_non_nullable
              as SwidiDeclaration,
    ));
  }
}

/// @nodoc

class _$_$SwidiNamedParameterCtor extends _$SwidiNamedParameterCtor {
  _$_$SwidiNamedParameterCtor({required this.declaration}) : super._();

  @override
  final SwidiDeclaration declaration;

  @override
  String toString() {
    return 'SwidiFunctionDeclarationNamedParameter(declaration: $declaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiNamedParameterCtor &&
            (identical(other.declaration, declaration) ||
                const DeepCollectionEquality()
                    .equals(other.declaration, declaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(declaration);

  @JsonKey(ignore: true)
  @override
  _$$SwidiNamedParameterCtorCopyWith<_$SwidiNamedParameterCtor> get copyWith =>
      __$$SwidiNamedParameterCtorCopyWithImpl<_$SwidiNamedParameterCtor>(
          this, _$identity);
}

abstract class _$SwidiNamedParameterCtor
    extends SwidiFunctionDeclarationNamedParameter {
  factory _$SwidiNamedParameterCtor({required SwidiDeclaration declaration}) =
      _$_$SwidiNamedParameterCtor;
  _$SwidiNamedParameterCtor._() : super._();

  @override
  SwidiDeclaration get declaration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiNamedParameterCtorCopyWith<_$SwidiNamedParameterCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
