// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidInstantiableGeneric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidInstantiableGeneric _$SwidInstantiableGenericFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidClass':
      return _$SwidInstantiableGenericFromSwidClass.fromJson(json);
    case 'fromSwidInterface':
      return _$SwidInstantiableGenericFromSwidInterface.fromJson(json);
    case 'fromSwidFunctionType':
      return _$SwidInstantiableGenericFromSwidFunctionType.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidInstantiableGenericTearOff {
  const _$SwidInstantiableGenericTearOff();

  _$SwidInstantiableGenericFromSwidClass fromSwidClass(
      {required SwidClass swidClass}) {
    return _$SwidInstantiableGenericFromSwidClass(
      swidClass: swidClass,
    );
  }

  _$SwidInstantiableGenericFromSwidInterface fromSwidInterface(
      {required SwidInterface swidInterface}) {
    return _$SwidInstantiableGenericFromSwidInterface(
      swidInterface: swidInterface,
    );
  }

  _$SwidInstantiableGenericFromSwidFunctionType fromSwidFunctionType(
      {required SwidFunctionType swidFunctionType}) {
    return _$SwidInstantiableGenericFromSwidFunctionType(
      swidFunctionType: swidFunctionType,
    );
  }

  SwidInstantiableGeneric fromJson(Map<String, Object> json) {
    return SwidInstantiableGeneric.fromJson(json);
  }
}

/// @nodoc
const $SwidInstantiableGeneric = _$SwidInstantiableGenericTearOff();

/// @nodoc
mixin _$SwidInstantiableGeneric {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidInstantiableGenericFromSwidClass value)
        fromSwidClass,
    required TResult Function(_$SwidInstantiableGenericFromSwidInterface value)
        fromSwidInterface,
    required TResult Function(
            _$SwidInstantiableGenericFromSwidFunctionType value)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidInstantiableGenericFromSwidClass value)?
        fromSwidClass,
    TResult Function(_$SwidInstantiableGenericFromSwidInterface value)?
        fromSwidInterface,
    TResult Function(_$SwidInstantiableGenericFromSwidFunctionType value)?
        fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidInstantiableGenericCopyWith<$Res> {
  factory $SwidInstantiableGenericCopyWith(SwidInstantiableGeneric value,
          $Res Function(SwidInstantiableGeneric) then) =
      _$SwidInstantiableGenericCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidInstantiableGenericCopyWithImpl<$Res>
    implements $SwidInstantiableGenericCopyWith<$Res> {
  _$SwidInstantiableGenericCopyWithImpl(this._value, this._then);

  final SwidInstantiableGeneric _value;
  // ignore: unused_field
  final $Res Function(SwidInstantiableGeneric) _then;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidClassCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidClassCopyWith(
          _$SwidInstantiableGenericFromSwidClass value,
          $Res Function(_$SwidInstantiableGenericFromSwidClass) then) =
      __$$SwidInstantiableGenericFromSwidClassCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$SwidInstantiableGenericFromSwidClassCopyWithImpl<$Res>
    extends _$SwidInstantiableGenericCopyWithImpl<$Res>
    implements _$$SwidInstantiableGenericFromSwidClassCopyWith<$Res> {
  __$$SwidInstantiableGenericFromSwidClassCopyWithImpl(
      _$SwidInstantiableGenericFromSwidClass _value,
      $Res Function(_$SwidInstantiableGenericFromSwidClass) _then)
      : super(
            _value, (v) => _then(v as _$SwidInstantiableGenericFromSwidClass));

  @override
  _$SwidInstantiableGenericFromSwidClass get _value =>
      super._value as _$SwidInstantiableGenericFromSwidClass;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidClass(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }

  @override
  $SwidClassCopyWith<$Res> get swidClass {
    return $SwidClassCopyWith<$Res>(_value.swidClass, (value) {
      return _then(_value.copyWith(swidClass: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidInstantiableGenericFromSwidClass
    extends _$SwidInstantiableGenericFromSwidClass {
  _$_$SwidInstantiableGenericFromSwidClass({required this.swidClass})
      : super._();

  factory _$_$SwidInstantiableGenericFromSwidClass.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidInstantiableGenericFromSwidClassFromJson(json);

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'SwidInstantiableGeneric.fromSwidClass(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidInstantiableGenericFromSwidClass &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @JsonKey(ignore: true)
  @override
  _$$SwidInstantiableGenericFromSwidClassCopyWith<
          _$SwidInstantiableGenericFromSwidClass>
      get copyWith => __$$SwidInstantiableGenericFromSwidClassCopyWithImpl<
          _$SwidInstantiableGenericFromSwidClass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidClass != null) {
      return fromSwidClass(swidClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidInstantiableGenericFromSwidClass value)
        fromSwidClass,
    required TResult Function(_$SwidInstantiableGenericFromSwidInterface value)
        fromSwidInterface,
    required TResult Function(
            _$SwidInstantiableGenericFromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidInstantiableGenericFromSwidClass value)?
        fromSwidClass,
    TResult Function(_$SwidInstantiableGenericFromSwidInterface value)?
        fromSwidInterface,
    TResult Function(_$SwidInstantiableGenericFromSwidFunctionType value)?
        fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidClass != null) {
      return fromSwidClass(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidInstantiableGenericFromSwidClassToJson(this)
      ..['runtimeType'] = 'fromSwidClass';
  }
}

abstract class _$SwidInstantiableGenericFromSwidClass
    extends SwidInstantiableGeneric {
  factory _$SwidInstantiableGenericFromSwidClass(
          {required SwidClass swidClass}) =
      _$_$SwidInstantiableGenericFromSwidClass;
  _$SwidInstantiableGenericFromSwidClass._() : super._();

  factory _$SwidInstantiableGenericFromSwidClass.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidClass.fromJson;

  SwidClass get swidClass => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidClassCopyWith<
          _$SwidInstantiableGenericFromSwidClass>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidInterfaceCopyWith(
          _$SwidInstantiableGenericFromSwidInterface value,
          $Res Function(_$SwidInstantiableGenericFromSwidInterface) then) =
      __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl<$Res>;
  $Res call({SwidInterface swidInterface});

  $SwidInterfaceCopyWith<$Res> get swidInterface;
}

/// @nodoc
class __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl<$Res>
    extends _$SwidInstantiableGenericCopyWithImpl<$Res>
    implements _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<$Res> {
  __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl(
      _$SwidInstantiableGenericFromSwidInterface _value,
      $Res Function(_$SwidInstantiableGenericFromSwidInterface) _then)
      : super(_value,
            (v) => _then(v as _$SwidInstantiableGenericFromSwidInterface));

  @override
  _$SwidInstantiableGenericFromSwidInterface get _value =>
      super._value as _$SwidInstantiableGenericFromSwidInterface;

  @override
  $Res call({
    Object? swidInterface = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidInterface(
      swidInterface: swidInterface == freezed
          ? _value.swidInterface
          : swidInterface // ignore: cast_nullable_to_non_nullable
              as SwidInterface,
    ));
  }

  @override
  $SwidInterfaceCopyWith<$Res> get swidInterface {
    return $SwidInterfaceCopyWith<$Res>(_value.swidInterface, (value) {
      return _then(_value.copyWith(swidInterface: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidInstantiableGenericFromSwidInterface
    extends _$SwidInstantiableGenericFromSwidInterface {
  _$_$SwidInstantiableGenericFromSwidInterface({required this.swidInterface})
      : super._();

  factory _$_$SwidInstantiableGenericFromSwidInterface.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidInstantiableGenericFromSwidInterfaceFromJson(json);

  @override
  final SwidInterface swidInterface;

  @override
  String toString() {
    return 'SwidInstantiableGeneric.fromSwidInterface(swidInterface: $swidInterface)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidInstantiableGenericFromSwidInterface &&
            (identical(other.swidInterface, swidInterface) ||
                const DeepCollectionEquality()
                    .equals(other.swidInterface, swidInterface)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidInterface);

  @JsonKey(ignore: true)
  @override
  _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<
          _$SwidInstantiableGenericFromSwidInterface>
      get copyWith => __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl<
          _$SwidInstantiableGenericFromSwidInterface>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidInterface != null) {
      return fromSwidInterface(swidInterface);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidInstantiableGenericFromSwidClass value)
        fromSwidClass,
    required TResult Function(_$SwidInstantiableGenericFromSwidInterface value)
        fromSwidInterface,
    required TResult Function(
            _$SwidInstantiableGenericFromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidInstantiableGenericFromSwidClass value)?
        fromSwidClass,
    TResult Function(_$SwidInstantiableGenericFromSwidInterface value)?
        fromSwidInterface,
    TResult Function(_$SwidInstantiableGenericFromSwidFunctionType value)?
        fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidInterface != null) {
      return fromSwidInterface(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidInstantiableGenericFromSwidInterfaceToJson(this)
      ..['runtimeType'] = 'fromSwidInterface';
  }
}

abstract class _$SwidInstantiableGenericFromSwidInterface
    extends SwidInstantiableGeneric {
  factory _$SwidInstantiableGenericFromSwidInterface(
          {required SwidInterface swidInterface}) =
      _$_$SwidInstantiableGenericFromSwidInterface;
  _$SwidInstantiableGenericFromSwidInterface._() : super._();

  factory _$SwidInstantiableGenericFromSwidInterface.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidInterface.fromJson;

  SwidInterface get swidInterface => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<
          _$SwidInstantiableGenericFromSwidInterface>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith(
          _$SwidInstantiableGenericFromSwidFunctionType value,
          $Res Function(_$SwidInstantiableGenericFromSwidFunctionType) then) =
      __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl<$Res>;
  $Res call({SwidFunctionType swidFunctionType});

  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType;
}

/// @nodoc
class __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl<$Res>
    extends _$SwidInstantiableGenericCopyWithImpl<$Res>
    implements _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<$Res> {
  __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl(
      _$SwidInstantiableGenericFromSwidFunctionType _value,
      $Res Function(_$SwidInstantiableGenericFromSwidFunctionType) _then)
      : super(_value,
            (v) => _then(v as _$SwidInstantiableGenericFromSwidFunctionType));

  @override
  _$SwidInstantiableGenericFromSwidFunctionType get _value =>
      super._value as _$SwidInstantiableGenericFromSwidFunctionType;

  @override
  $Res call({
    Object? swidFunctionType = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidFunctionType(
      swidFunctionType: swidFunctionType == freezed
          ? _value.swidFunctionType
          : swidFunctionType // ignore: cast_nullable_to_non_nullable
              as SwidFunctionType,
    ));
  }

  @override
  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType {
    return $SwidFunctionTypeCopyWith<$Res>(_value.swidFunctionType, (value) {
      return _then(_value.copyWith(swidFunctionType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidInstantiableGenericFromSwidFunctionType
    extends _$SwidInstantiableGenericFromSwidFunctionType {
  _$_$SwidInstantiableGenericFromSwidFunctionType(
      {required this.swidFunctionType})
      : super._();

  factory _$_$SwidInstantiableGenericFromSwidFunctionType.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidInstantiableGenericFromSwidFunctionTypeFromJson(json);

  @override
  final SwidFunctionType swidFunctionType;

  @override
  String toString() {
    return 'SwidInstantiableGeneric.fromSwidFunctionType(swidFunctionType: $swidFunctionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidInstantiableGenericFromSwidFunctionType &&
            (identical(other.swidFunctionType, swidFunctionType) ||
                const DeepCollectionEquality()
                    .equals(other.swidFunctionType, swidFunctionType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidFunctionType);

  @JsonKey(ignore: true)
  @override
  _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<
          _$SwidInstantiableGenericFromSwidFunctionType>
      get copyWith =>
          __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl<
              _$SwidInstantiableGenericFromSwidFunctionType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(swidFunctionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidInstantiableGenericFromSwidClass value)
        fromSwidClass,
    required TResult Function(_$SwidInstantiableGenericFromSwidInterface value)
        fromSwidInterface,
    required TResult Function(
            _$SwidInstantiableGenericFromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidInstantiableGenericFromSwidClass value)?
        fromSwidClass,
    TResult Function(_$SwidInstantiableGenericFromSwidInterface value)?
        fromSwidInterface,
    TResult Function(_$SwidInstantiableGenericFromSwidFunctionType value)?
        fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidInstantiableGenericFromSwidFunctionTypeToJson(this)
      ..['runtimeType'] = 'fromSwidFunctionType';
  }
}

abstract class _$SwidInstantiableGenericFromSwidFunctionType
    extends SwidInstantiableGeneric {
  factory _$SwidInstantiableGenericFromSwidFunctionType(
          {required SwidFunctionType swidFunctionType}) =
      _$_$SwidInstantiableGenericFromSwidFunctionType;
  _$SwidInstantiableGenericFromSwidFunctionType._() : super._();

  factory _$SwidInstantiableGenericFromSwidFunctionType.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<
          _$SwidInstantiableGenericFromSwidFunctionType>
      get copyWith => throw _privateConstructorUsedError;
}
