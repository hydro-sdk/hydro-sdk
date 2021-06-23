// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiDeclarationTearOff {
  const _$SwidiDeclarationTearOff();

  _$SwidiDeclarationCtor call(
      {required String name,
      required SwidiInterface type,
      SwidiConst defaultConstValue = const SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: swidiEmptyConst)}) {
    return _$SwidiDeclarationCtor(
      name: name,
      type: type,
      defaultConstValue: defaultConstValue,
    );
  }
}

/// @nodoc
const $SwidiDeclaration = _$SwidiDeclarationTearOff();

/// @nodoc
mixin _$SwidiDeclaration {
  String get name => throw _privateConstructorUsedError;
  SwidiInterface get type => throw _privateConstructorUsedError;
  SwidiConst get defaultConstValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiDeclarationCopyWith<SwidiDeclaration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiDeclarationCopyWith<$Res> {
  factory $SwidiDeclarationCopyWith(
          SwidiDeclaration value, $Res Function(SwidiDeclaration) then) =
      _$SwidiDeclarationCopyWithImpl<$Res>;
  $Res call({String name, SwidiInterface type, SwidiConst defaultConstValue});

  $SwidiInterfaceCopyWith<$Res> get type;
  $SwidiConstCopyWith<$Res> get defaultConstValue;
}

/// @nodoc
class _$SwidiDeclarationCopyWithImpl<$Res>
    implements $SwidiDeclarationCopyWith<$Res> {
  _$SwidiDeclarationCopyWithImpl(this._value, this._then);

  final SwidiDeclaration _value;
  // ignore: unused_field
  final $Res Function(SwidiDeclaration) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? defaultConstValue = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
      defaultConstValue: defaultConstValue == freezed
          ? _value.defaultConstValue
          : defaultConstValue // ignore: cast_nullable_to_non_nullable
              as SwidiConst,
    ));
  }

  @override
  $SwidiInterfaceCopyWith<$Res> get type {
    return $SwidiInterfaceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  $SwidiConstCopyWith<$Res> get defaultConstValue {
    return $SwidiConstCopyWith<$Res>(_value.defaultConstValue, (value) {
      return _then(_value.copyWith(defaultConstValue: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiDeclarationCtorCopyWith<$Res>
    implements $SwidiDeclarationCopyWith<$Res> {
  factory _$$SwidiDeclarationCtorCopyWith(_$SwidiDeclarationCtor value,
          $Res Function(_$SwidiDeclarationCtor) then) =
      __$$SwidiDeclarationCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidiInterface type, SwidiConst defaultConstValue});

  @override
  $SwidiInterfaceCopyWith<$Res> get type;
  @override
  $SwidiConstCopyWith<$Res> get defaultConstValue;
}

/// @nodoc
class __$$SwidiDeclarationCtorCopyWithImpl<$Res>
    extends _$SwidiDeclarationCopyWithImpl<$Res>
    implements _$$SwidiDeclarationCtorCopyWith<$Res> {
  __$$SwidiDeclarationCtorCopyWithImpl(_$SwidiDeclarationCtor _value,
      $Res Function(_$SwidiDeclarationCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiDeclarationCtor));

  @override
  _$SwidiDeclarationCtor get _value => super._value as _$SwidiDeclarationCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? defaultConstValue = freezed,
  }) {
    return _then(_$SwidiDeclarationCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
      defaultConstValue: defaultConstValue == freezed
          ? _value.defaultConstValue
          : defaultConstValue // ignore: cast_nullable_to_non_nullable
              as SwidiConst,
    ));
  }
}

/// @nodoc

class _$_$SwidiDeclarationCtor implements _$SwidiDeclarationCtor {
  const _$_$SwidiDeclarationCtor(
      {required this.name,
      required this.type,
      this.defaultConstValue = const SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: swidiEmptyConst)});

  @override
  final String name;
  @override
  final SwidiInterface type;
  @JsonKey(
      defaultValue: const SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: swidiEmptyConst))
  @override
  final SwidiConst defaultConstValue;

  @override
  String toString() {
    return 'SwidiDeclaration(name: $name, type: $type, defaultConstValue: $defaultConstValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiDeclarationCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.defaultConstValue, defaultConstValue) ||
                const DeepCollectionEquality()
                    .equals(other.defaultConstValue, defaultConstValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(defaultConstValue);

  @JsonKey(ignore: true)
  @override
  _$$SwidiDeclarationCtorCopyWith<_$SwidiDeclarationCtor> get copyWith =>
      __$$SwidiDeclarationCtorCopyWithImpl<_$SwidiDeclarationCtor>(
          this, _$identity);
}

abstract class _$SwidiDeclarationCtor implements SwidiDeclaration {
  const factory _$SwidiDeclarationCtor(
      {required String name,
      required SwidiInterface type,
      SwidiConst defaultConstValue}) = _$_$SwidiDeclarationCtor;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidiInterface get type => throw _privateConstructorUsedError;
  @override
  SwidiConst get defaultConstValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiDeclarationCtorCopyWith<_$SwidiDeclarationCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
