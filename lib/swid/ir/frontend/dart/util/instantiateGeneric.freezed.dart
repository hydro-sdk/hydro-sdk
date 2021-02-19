// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'instantiateGeneric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidGenericInstantiator _$SwidGenericInstantiatorFromJson(
    Map<String, dynamic> json) {
  return _$SwidGenericInstantiatorCtor.fromJson(json);
}

/// @nodoc
class _$SwidGenericInstantiatorTearOff {
  const _$SwidGenericInstantiatorTearOff();

// ignore: unused_element
  _$SwidGenericInstantiatorCtor call(
      {@required String name, @required SwidType type}) {
    return _$SwidGenericInstantiatorCtor(
      name: name,
      type: type,
    );
  }

// ignore: unused_element
  SwidGenericInstantiator fromJson(Map<String, Object> json) {
    return SwidGenericInstantiator.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidGenericInstantiator = _$SwidGenericInstantiatorTearOff();

/// @nodoc
mixin _$SwidGenericInstantiator {
  String get name;
  SwidType get type;

  Map<String, dynamic> toJson();
  $SwidGenericInstantiatorCopyWith<SwidGenericInstantiator> get copyWith;
}

/// @nodoc
abstract class $SwidGenericInstantiatorCopyWith<$Res> {
  factory $SwidGenericInstantiatorCopyWith(SwidGenericInstantiator value,
          $Res Function(SwidGenericInstantiator) then) =
      _$SwidGenericInstantiatorCopyWithImpl<$Res>;
  $Res call({String name, SwidType type});

  $SwidTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SwidGenericInstantiatorCopyWithImpl<$Res>
    implements $SwidGenericInstantiatorCopyWith<$Res> {
  _$SwidGenericInstantiatorCopyWithImpl(this._value, this._then);

  final SwidGenericInstantiator _value;
  // ignore: unused_field
  final $Res Function(SwidGenericInstantiator) _then;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as SwidType,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $SwidTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidGenericInstantiatorCtorCopyWith<$Res>
    implements $SwidGenericInstantiatorCopyWith<$Res> {
  factory _$$SwidGenericInstantiatorCtorCopyWith(
          _$SwidGenericInstantiatorCtor value,
          $Res Function(_$SwidGenericInstantiatorCtor) then) =
      __$$SwidGenericInstantiatorCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidType type});

  @override
  $SwidTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$SwidGenericInstantiatorCtorCopyWithImpl<$Res>
    extends _$SwidGenericInstantiatorCopyWithImpl<$Res>
    implements _$$SwidGenericInstantiatorCtorCopyWith<$Res> {
  __$$SwidGenericInstantiatorCtorCopyWithImpl(
      _$SwidGenericInstantiatorCtor _value,
      $Res Function(_$SwidGenericInstantiatorCtor) _then)
      : super(_value, (v) => _then(v as _$SwidGenericInstantiatorCtor));

  @override
  _$SwidGenericInstantiatorCtor get _value =>
      super._value as _$SwidGenericInstantiatorCtor;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_$SwidGenericInstantiatorCtor(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as SwidType,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidGenericInstantiatorCtor implements _$SwidGenericInstantiatorCtor {
  _$_$SwidGenericInstantiatorCtor({@required this.name, @required this.type})
      : assert(name != null),
        assert(type != null);

  factory _$_$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidGenericInstantiatorCtorFromJson(json);

  @override
  final String name;
  @override
  final SwidType type;

  @override
  String toString() {
    return 'SwidGenericInstantiator(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidGenericInstantiatorCtor &&
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

  @override
  _$$SwidGenericInstantiatorCtorCopyWith<_$SwidGenericInstantiatorCtor>
      get copyWith => __$$SwidGenericInstantiatorCtorCopyWithImpl<
          _$SwidGenericInstantiatorCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidGenericInstantiatorCtorToJson(this);
  }
}

abstract class _$SwidGenericInstantiatorCtor
    implements SwidGenericInstantiator {
  factory _$SwidGenericInstantiatorCtor(
      {@required String name,
      @required SwidType type}) = _$_$SwidGenericInstantiatorCtor;

  factory _$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidGenericInstantiatorCtor.fromJson;

  @override
  String get name;
  @override
  SwidType get type;
  @override
  _$$SwidGenericInstantiatorCtorCopyWith<_$SwidGenericInstantiatorCtor>
      get copyWith;
}
