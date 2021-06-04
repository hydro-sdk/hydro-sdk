// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidInstantiableGeneric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidInstantiableGeneric _$SwidInstantiableGenericFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
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

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidClass fromSwidClass(
      {required SwidClass swidClass}) {
    return _$SwidInstantiableGenericFromSwidClass(
      swidClass: swidClass,
    );
  }

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidInterface fromSwidInterface(
      {required SwidInterface swidInterface}) {
    return _$SwidInstantiableGenericFromSwidInterface(
      swidInterface: swidInterface,
    );
  }

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidFunctionType fromSwidFunctionType(
      {required SwidFunctionType swidFunctionType}) {
    return _$SwidInstantiableGenericFromSwidFunctionType(
      swidFunctionType: swidFunctionType,
    );
  }

// ignore: unused_element
  SwidInstantiableGeneric fromJson(Map<String, Object> json) {
    return SwidInstantiableGeneric.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidInstantiableGeneric = _$SwidInstantiableGenericTearOff();

/// @nodoc
mixin _$SwidInstantiableGeneric {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    required TResult fromSwidClass(SwidClass swidClass),
    required TResult fromSwidInterface(SwidInterface swidInterface),
    required TResult fromSwidFunctionType(SwidFunctionType swidFunctionType),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidClass(SwidClass swidClass)?,
    TResult fromSwidInterface(SwidInterface swidInterface)?,
    TResult fromSwidFunctionType(SwidFunctionType swidFunctionType)?,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required
        TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    required
        TResult fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    required
        TResult fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value)?,
    TResult fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value)?,
    TResult fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value)?,
    required TResult orElse(),
  });
  Map<String, dynamic> toJson();
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
  final $Res Function(SwidInstantiableGeneric?) _then;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidClassCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidClassCopyWith(
          _$SwidInstantiableGenericFromSwidClass value,
          $Res Function(_$SwidInstantiableGenericFromSwidClass) then) =
      __$$SwidInstantiableGenericFromSwidClassCopyWithImpl<$Res>;
  $Res call({SwidClass? swidClass});

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
      swidClass:
          swidClass == freezed ? _value.swidClass : (swidClass as SwidClass?)!,
    ));
  }

  @override
  $SwidClassCopyWith<$Res> get swidClass {
    if (_value.swidClass == null) {
      return null;
    }
    return $SwidClassCopyWith<$Res>(_value.swidClass, (value) {
      return _then(_value.copyWith(swidClass: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidInstantiableGenericFromSwidClass
    implements _$SwidInstantiableGenericFromSwidClass {
  const _$_$SwidInstantiableGenericFromSwidClass({required this.swidClass})
      : assert(swidClass != null);

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
  TResult when<TResult extends Object>({
    required TResult fromSwidClass(SwidClass swidClass),
    required TResult fromSwidInterface(SwidInterface swidInterface),
    required TResult fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidClass(SwidClass swidClass)?,
    TResult fromSwidInterface(SwidInterface swidInterface)?,
    TResult fromSwidFunctionType(SwidFunctionType swidFunctionType)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidClass != null) {
      return fromSwidClass(swidClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required
        TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    required
        TResult fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    required
        TResult fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value)?,
    TResult fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value)?,
    TResult fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
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
    implements SwidInstantiableGeneric {
  const factory _$SwidInstantiableGenericFromSwidClass(
          {required SwidClass swidClass}) =
      _$_$SwidInstantiableGenericFromSwidClass;

  factory _$SwidInstantiableGenericFromSwidClass.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidClass.fromJson;

  SwidClass get swidClass;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidClassCopyWith<
      _$SwidInstantiableGenericFromSwidClass> get copyWith;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidInterfaceCopyWith(
          _$SwidInstantiableGenericFromSwidInterface value,
          $Res Function(_$SwidInstantiableGenericFromSwidInterface) then) =
      __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl<$Res>;
  $Res call({SwidInterface? swidInterface});

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
          : (swidInterface as SwidInterface?)!,
    ));
  }

  @override
  $SwidInterfaceCopyWith<$Res> get swidInterface {
    if (_value.swidInterface == null) {
      return null;
    }
    return $SwidInterfaceCopyWith<$Res>(_value.swidInterface, (value) {
      return _then(_value.copyWith(swidInterface: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidInstantiableGenericFromSwidInterface
    implements _$SwidInstantiableGenericFromSwidInterface {
  const _$_$SwidInstantiableGenericFromSwidInterface(
      {required this.swidInterface})
      : assert(swidInterface != null);

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
  TResult when<TResult extends Object>({
    required TResult fromSwidClass(SwidClass swidClass),
    required TResult fromSwidInterface(SwidInterface swidInterface),
    required TResult fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidClass(SwidClass swidClass)?,
    TResult fromSwidInterface(SwidInterface swidInterface)?,
    TResult fromSwidFunctionType(SwidFunctionType swidFunctionType)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidInterface != null) {
      return fromSwidInterface(swidInterface);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required
        TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    required
        TResult fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    required
        TResult fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value)?,
    TResult fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value)?,
    TResult fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
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
    implements SwidInstantiableGeneric {
  const factory _$SwidInstantiableGenericFromSwidInterface(
          {required SwidInterface swidInterface}) =
      _$_$SwidInstantiableGenericFromSwidInterface;

  factory _$SwidInstantiableGenericFromSwidInterface.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidInterface.fromJson;

  SwidInterface get swidInterface;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<
      _$SwidInstantiableGenericFromSwidInterface> get copyWith;
}

/// @nodoc
abstract class _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<$Res> {
  factory _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith(
          _$SwidInstantiableGenericFromSwidFunctionType value,
          $Res Function(_$SwidInstantiableGenericFromSwidFunctionType) then) =
      __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl<$Res>;
  $Res call({SwidFunctionType? swidFunctionType});

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
          : (swidFunctionType as SwidFunctionType?)!,
    ));
  }

  @override
  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType {
    if (_value.swidFunctionType == null) {
      return null;
    }
    return $SwidFunctionTypeCopyWith<$Res>(_value.swidFunctionType, (value) {
      return _then(_value.copyWith(swidFunctionType: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidInstantiableGenericFromSwidFunctionType
    implements _$SwidInstantiableGenericFromSwidFunctionType {
  const _$_$SwidInstantiableGenericFromSwidFunctionType(
      {required this.swidFunctionType})
      : assert(swidFunctionType != null);

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
  TResult when<TResult extends Object>({
    required TResult fromSwidClass(SwidClass swidClass),
    required TResult fromSwidInterface(SwidInterface swidInterface),
    required TResult fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fromSwidClass(SwidClass swidClass)?,
    TResult fromSwidInterface(SwidInterface swidInterface)?,
    TResult fromSwidFunctionType(SwidFunctionType swidFunctionType)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(swidFunctionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    required
        TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    required
        TResult fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    required
        TResult fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fromSwidClass(_$SwidInstantiableGenericFromSwidClass value)?,
    TResult fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value)?,
    TResult fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value)?,
    required TResult orElse(),
  }) {
    assert(orElse != null);
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
    implements SwidInstantiableGeneric {
  const factory _$SwidInstantiableGenericFromSwidFunctionType(
          {required SwidFunctionType swidFunctionType}) =
      _$_$SwidInstantiableGenericFromSwidFunctionType;

  factory _$SwidInstantiableGenericFromSwidFunctionType.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType;
  @JsonKey(ignore: true)
  _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<
      _$SwidInstantiableGenericFromSwidFunctionType> get copyWith;
}
