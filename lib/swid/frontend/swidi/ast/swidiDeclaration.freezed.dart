// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiDeclarationTearOff {
  const _$SwidiDeclarationTearOff();

// ignore: unused_element
  _$SwidiDeclarationCtor call(
      {@required String name, @required SwidiInterface type}) {
    return _$SwidiDeclarationCtor(
      name: name,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiDeclaration = _$SwidiDeclarationTearOff();

/// @nodoc
mixin _$SwidiDeclaration {
  String get name;
  SwidiInterface get type;

  @JsonKey(ignore: true)
  $SwidiDeclarationCopyWith<SwidiDeclaration> get copyWith;
}

/// @nodoc
abstract class $SwidiDeclarationCopyWith<$Res> {
  factory $SwidiDeclarationCopyWith(
          SwidiDeclaration value, $Res Function(SwidiDeclaration) then) =
      _$SwidiDeclarationCopyWithImpl<$Res>;
  $Res call({String name, SwidiInterface type});

  $SwidiInterfaceCopyWith<$Res> get type;
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
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as SwidiInterface,
    ));
  }

  @override
  $SwidiInterfaceCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $SwidiInterfaceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
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
  $Res call({String name, SwidiInterface type});

  @override
  $SwidiInterfaceCopyWith<$Res> get type;
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
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_$SwidiDeclarationCtor(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as SwidiInterface,
    ));
  }
}

/// @nodoc
class _$_$SwidiDeclarationCtor implements _$SwidiDeclarationCtor {
  const _$_$SwidiDeclarationCtor({@required this.name, @required this.type})
      : assert(name != null),
        assert(type != null);

  @override
  final String name;
  @override
  final SwidiInterface type;

  @override
  String toString() {
    return 'SwidiDeclaration(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiDeclarationCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$$SwidiDeclarationCtorCopyWith<_$SwidiDeclarationCtor> get copyWith =>
      __$$SwidiDeclarationCtorCopyWithImpl<_$SwidiDeclarationCtor>(
          this, _$identity);
}

abstract class _$SwidiDeclarationCtor implements SwidiDeclaration {
  const factory _$SwidiDeclarationCtor(
      {@required String name,
      @required SwidiInterface type}) = _$_$SwidiDeclarationCtor;

  @override
  String get name;
  @override
  SwidiInterface get type;
  @override
  @JsonKey(ignore: true)
  _$$SwidiDeclarationCtorCopyWith<_$SwidiDeclarationCtor> get copyWith;
}
