// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidTypeArgumentType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidTypeArgumentType _$SwidTypeArgumentTypeFromJson(Map<String, dynamic> json) {
  return _$SwidTypeArgumentTypeCtor.fromJson(json);
}

/// @nodoc
class _$SwidTypeArgumentTypeTearOff {
  const _$SwidTypeArgumentTypeTearOff();

  _$SwidTypeArgumentTypeCtor call(
      {required SwidType type, required SwidElement? element}) {
    return _$SwidTypeArgumentTypeCtor(
      type: type,
      element: element,
    );
  }

  SwidTypeArgumentType fromJson(Map<String, Object> json) {
    return SwidTypeArgumentType.fromJson(json);
  }
}

/// @nodoc
const $SwidTypeArgumentType = _$SwidTypeArgumentTypeTearOff();

/// @nodoc
mixin _$SwidTypeArgumentType {
  SwidType get type => throw _privateConstructorUsedError;
  SwidElement? get element => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidTypeArgumentTypeCopyWith<SwidTypeArgumentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidTypeArgumentTypeCopyWith<$Res> {
  factory $SwidTypeArgumentTypeCopyWith(SwidTypeArgumentType value,
          $Res Function(SwidTypeArgumentType) then) =
      _$SwidTypeArgumentTypeCopyWithImpl<$Res>;
  $Res call({SwidType type, SwidElement? element});

  $SwidTypeCopyWith<$Res> get type;
  $SwidElementCopyWith<$Res>? get element;
}

/// @nodoc
class _$SwidTypeArgumentTypeCopyWithImpl<$Res>
    implements $SwidTypeArgumentTypeCopyWith<$Res> {
  _$SwidTypeArgumentTypeCopyWithImpl(this._value, this._then);

  final SwidTypeArgumentType _value;
  // ignore: unused_field
  final $Res Function(SwidTypeArgumentType) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? element = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidType,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as SwidElement?,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get type {
    return $SwidTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  $SwidElementCopyWith<$Res>? get element {
    if (_value.element == null) {
      return null;
    }

    return $SwidElementCopyWith<$Res>(_value.element!, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidTypeArgumentTypeCtorCopyWith<$Res>
    implements $SwidTypeArgumentTypeCopyWith<$Res> {
  factory _$$SwidTypeArgumentTypeCtorCopyWith(_$SwidTypeArgumentTypeCtor value,
          $Res Function(_$SwidTypeArgumentTypeCtor) then) =
      __$$SwidTypeArgumentTypeCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidType type, SwidElement? element});

  @override
  $SwidTypeCopyWith<$Res> get type;
  @override
  $SwidElementCopyWith<$Res>? get element;
}

/// @nodoc
class __$$SwidTypeArgumentTypeCtorCopyWithImpl<$Res>
    extends _$SwidTypeArgumentTypeCopyWithImpl<$Res>
    implements _$$SwidTypeArgumentTypeCtorCopyWith<$Res> {
  __$$SwidTypeArgumentTypeCtorCopyWithImpl(_$SwidTypeArgumentTypeCtor _value,
      $Res Function(_$SwidTypeArgumentTypeCtor) _then)
      : super(_value, (v) => _then(v as _$SwidTypeArgumentTypeCtor));

  @override
  _$SwidTypeArgumentTypeCtor get _value =>
      super._value as _$SwidTypeArgumentTypeCtor;

  @override
  $Res call({
    Object? type = freezed,
    Object? element = freezed,
  }) {
    return _then(_$SwidTypeArgumentTypeCtor(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidType,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as SwidElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidTypeArgumentTypeCtor extends _$SwidTypeArgumentTypeCtor {
  _$_$SwidTypeArgumentTypeCtor({required this.type, required this.element})
      : super._();

  factory _$_$SwidTypeArgumentTypeCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidTypeArgumentTypeCtorFromJson(json);

  @override
  final SwidType type;
  @override
  final SwidElement? element;

  @override
  String toString() {
    return 'SwidTypeArgumentType(type: $type, element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidTypeArgumentTypeCtor &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.element, element) ||
                const DeepCollectionEquality().equals(other.element, element)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(element);

  @JsonKey(ignore: true)
  @override
  _$$SwidTypeArgumentTypeCtorCopyWith<_$SwidTypeArgumentTypeCtor>
      get copyWith =>
          __$$SwidTypeArgumentTypeCtorCopyWithImpl<_$SwidTypeArgumentTypeCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidTypeArgumentTypeCtorToJson(this);
  }
}

abstract class _$SwidTypeArgumentTypeCtor extends SwidTypeArgumentType {
  factory _$SwidTypeArgumentTypeCtor(
      {required SwidType type,
      required SwidElement? element}) = _$_$SwidTypeArgumentTypeCtor;
  _$SwidTypeArgumentTypeCtor._() : super._();

  factory _$SwidTypeArgumentTypeCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidTypeArgumentTypeCtor.fromJson;

  @override
  SwidType get type => throw _privateConstructorUsedError;
  @override
  SwidElement? get element => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidTypeArgumentTypeCtorCopyWith<_$SwidTypeArgumentTypeCtor>
      get copyWith => throw _privateConstructorUsedError;
}
