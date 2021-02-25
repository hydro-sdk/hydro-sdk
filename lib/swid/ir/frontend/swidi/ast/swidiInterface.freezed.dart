// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiInterface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiInterfaceTearOff {
  const _$SwidiInterfaceTearOff();

// ignore: unused_element
  _$SwidiInterfaceCtor call({@required String name}) {
    return _$SwidiInterfaceCtor(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiInterface = _$SwidiInterfaceTearOff();

/// @nodoc
mixin _$SwidiInterface {
  String get name;

  $SwidiInterfaceCopyWith<SwidiInterface> get copyWith;
}

/// @nodoc
abstract class $SwidiInterfaceCopyWith<$Res> {
  factory $SwidiInterfaceCopyWith(
          SwidiInterface value, $Res Function(SwidiInterface) then) =
      _$SwidiInterfaceCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$SwidiInterfaceCopyWithImpl<$Res>
    implements $SwidiInterfaceCopyWith<$Res> {
  _$SwidiInterfaceCopyWithImpl(this._value, this._then);

  final SwidiInterface _value;
  // ignore: unused_field
  final $Res Function(SwidiInterface) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiInterfaceCtorCopyWith<$Res>
    implements $SwidiInterfaceCopyWith<$Res> {
  factory _$$SwidiInterfaceCtorCopyWith(_$SwidiInterfaceCtor value,
          $Res Function(_$SwidiInterfaceCtor) then) =
      __$$SwidiInterfaceCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$SwidiInterfaceCtorCopyWithImpl<$Res>
    extends _$SwidiInterfaceCopyWithImpl<$Res>
    implements _$$SwidiInterfaceCtorCopyWith<$Res> {
  __$$SwidiInterfaceCtorCopyWithImpl(
      _$SwidiInterfaceCtor _value, $Res Function(_$SwidiInterfaceCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiInterfaceCtor));

  @override
  _$SwidiInterfaceCtor get _value => super._value as _$SwidiInterfaceCtor;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_$SwidiInterfaceCtor(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_$SwidiInterfaceCtor implements _$SwidiInterfaceCtor {
  const _$_$SwidiInterfaceCtor({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'SwidiInterface(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiInterfaceCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$$SwidiInterfaceCtorCopyWith<_$SwidiInterfaceCtor> get copyWith =>
      __$$SwidiInterfaceCtorCopyWithImpl<_$SwidiInterfaceCtor>(
          this, _$identity);
}

abstract class _$SwidiInterfaceCtor implements SwidiInterface {
  const factory _$SwidiInterfaceCtor({@required String name}) =
      _$_$SwidiInterfaceCtor;

  @override
  String get name;
  @override
  _$$SwidiInterfaceCtorCopyWith<_$SwidiInterfaceCtor> get copyWith;
}
