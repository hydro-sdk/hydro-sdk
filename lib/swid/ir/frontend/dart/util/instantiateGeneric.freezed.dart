// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'instantiateGeneric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidClass fromSwidClass(
      {@required SwidClass swidClass}) {
    return _$SwidInstantiableGenericFromSwidClass(
      swidClass: swidClass,
    );
  }

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidInterface fromSwidInterface(
      {@required SwidInterface swidInterface}) {
    return _$SwidInstantiableGenericFromSwidInterface(
      swidInterface: swidInterface,
    );
  }

// ignore: unused_element
  _$SwidInstantiableGenericFromSwidFunctionType fromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) {
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
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    @required
        Result fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    @required
        Result fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    Result fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value),
    Result fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value),
    @required Result orElse(),
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
    Object swidClass = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidClass(
      swidClass:
          swidClass == freezed ? _value.swidClass : swidClass as SwidClass,
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
  _$_$SwidInstantiableGenericFromSwidClass({@required this.swidClass})
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

  @override
  _$$SwidInstantiableGenericFromSwidClassCopyWith<
          _$SwidInstantiableGenericFromSwidClass>
      get copyWith => __$$SwidInstantiableGenericFromSwidClassCopyWithImpl<
          _$SwidInstantiableGenericFromSwidClass>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidClass != null) {
      return fromSwidClass(swidClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    @required
        Result fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    @required
        Result fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    Result fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value),
    Result fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value),
    @required Result orElse(),
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
  factory _$SwidInstantiableGenericFromSwidClass(
          {@required SwidClass swidClass}) =
      _$_$SwidInstantiableGenericFromSwidClass;

  factory _$SwidInstantiableGenericFromSwidClass.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidClass.fromJson;

  SwidClass get swidClass;
  _$$SwidInstantiableGenericFromSwidClassCopyWith<
      _$SwidInstantiableGenericFromSwidClass> get copyWith;
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
    Object swidInterface = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidInterface(
      swidInterface: swidInterface == freezed
          ? _value.swidInterface
          : swidInterface as SwidInterface,
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
  _$_$SwidInstantiableGenericFromSwidInterface({@required this.swidInterface})
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

  @override
  _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<
          _$SwidInstantiableGenericFromSwidInterface>
      get copyWith => __$$SwidInstantiableGenericFromSwidInterfaceCopyWithImpl<
          _$SwidInstantiableGenericFromSwidInterface>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidInterface != null) {
      return fromSwidInterface(swidInterface);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    @required
        Result fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    @required
        Result fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    Result fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value),
    Result fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value),
    @required Result orElse(),
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
  factory _$SwidInstantiableGenericFromSwidInterface(
          {@required SwidInterface swidInterface}) =
      _$_$SwidInstantiableGenericFromSwidInterface;

  factory _$SwidInstantiableGenericFromSwidInterface.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidInterface.fromJson;

  SwidInterface get swidInterface;
  _$$SwidInstantiableGenericFromSwidInterfaceCopyWith<
      _$SwidInstantiableGenericFromSwidInterface> get copyWith;
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
    Object swidFunctionType = freezed,
  }) {
    return _then(_$SwidInstantiableGenericFromSwidFunctionType(
      swidFunctionType: swidFunctionType == freezed
          ? _value.swidFunctionType
          : swidFunctionType as SwidFunctionType,
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
  _$_$SwidInstantiableGenericFromSwidFunctionType(
      {@required this.swidFunctionType})
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

  @override
  _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<
          _$SwidInstantiableGenericFromSwidFunctionType>
      get copyWith =>
          __$$SwidInstantiableGenericFromSwidFunctionTypeCopyWithImpl<
              _$SwidInstantiableGenericFromSwidFunctionType>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(swidFunctionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    @required
        Result fromSwidInterface(
            _$SwidInstantiableGenericFromSwidInterface value),
    @required
        Result fromSwidFunctionType(
            _$SwidInstantiableGenericFromSwidFunctionType value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidInstantiableGenericFromSwidClass value),
    Result fromSwidInterface(_$SwidInstantiableGenericFromSwidInterface value),
    Result fromSwidFunctionType(
        _$SwidInstantiableGenericFromSwidFunctionType value),
    @required Result orElse(),
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
  factory _$SwidInstantiableGenericFromSwidFunctionType(
          {@required SwidFunctionType swidFunctionType}) =
      _$_$SwidInstantiableGenericFromSwidFunctionType;

  factory _$SwidInstantiableGenericFromSwidFunctionType.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidInstantiableGenericFromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType;
  _$$SwidInstantiableGenericFromSwidFunctionTypeCopyWith<
      _$SwidInstantiableGenericFromSwidFunctionType> get copyWith;
}

SwidInstantiatedGeneric _$SwidInstantiatedGenericFromJson(
    Map<String, dynamic> json) {
  return _$SwidInstantiatedGenericCtor.fromJson(json);
}

/// @nodoc
class _$SwidInstantiatedGenericTearOff {
  const _$SwidInstantiatedGenericTearOff();

// ignore: unused_element
  _$SwidInstantiatedGenericCtor call(
      {@required SwidInstantiableGeneric instantiableGeneric,
      @required SwidReferenceDeclarationKind referenceDeclarationKind}) {
    return _$SwidInstantiatedGenericCtor(
      instantiableGeneric: instantiableGeneric,
      referenceDeclarationKind: referenceDeclarationKind,
    );
  }

// ignore: unused_element
  SwidInstantiatedGeneric fromJson(Map<String, Object> json) {
    return SwidInstantiatedGeneric.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidInstantiatedGeneric = _$SwidInstantiatedGenericTearOff();

/// @nodoc
mixin _$SwidInstantiatedGeneric {
  SwidInstantiableGeneric get instantiableGeneric;
  SwidReferenceDeclarationKind get referenceDeclarationKind;

  Map<String, dynamic> toJson();
  $SwidInstantiatedGenericCopyWith<SwidInstantiatedGeneric> get copyWith;
}

/// @nodoc
abstract class $SwidInstantiatedGenericCopyWith<$Res> {
  factory $SwidInstantiatedGenericCopyWith(SwidInstantiatedGeneric value,
          $Res Function(SwidInstantiatedGeneric) then) =
      _$SwidInstantiatedGenericCopyWithImpl<$Res>;
  $Res call(
      {SwidInstantiableGeneric instantiableGeneric,
      SwidReferenceDeclarationKind referenceDeclarationKind});

  $SwidInstantiableGenericCopyWith<$Res> get instantiableGeneric;
}

/// @nodoc
class _$SwidInstantiatedGenericCopyWithImpl<$Res>
    implements $SwidInstantiatedGenericCopyWith<$Res> {
  _$SwidInstantiatedGenericCopyWithImpl(this._value, this._then);

  final SwidInstantiatedGeneric _value;
  // ignore: unused_field
  final $Res Function(SwidInstantiatedGeneric) _then;

  @override
  $Res call({
    Object instantiableGeneric = freezed,
    Object referenceDeclarationKind = freezed,
  }) {
    return _then(_value.copyWith(
      instantiableGeneric: instantiableGeneric == freezed
          ? _value.instantiableGeneric
          : instantiableGeneric as SwidInstantiableGeneric,
      referenceDeclarationKind: referenceDeclarationKind == freezed
          ? _value.referenceDeclarationKind
          : referenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }

  @override
  $SwidInstantiableGenericCopyWith<$Res> get instantiableGeneric {
    if (_value.instantiableGeneric == null) {
      return null;
    }
    return $SwidInstantiableGenericCopyWith<$Res>(_value.instantiableGeneric,
        (value) {
      return _then(_value.copyWith(instantiableGeneric: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidInstantiatedGenericCtorCopyWith<$Res>
    implements $SwidInstantiatedGenericCopyWith<$Res> {
  factory _$$SwidInstantiatedGenericCtorCopyWith(
          _$SwidInstantiatedGenericCtor value,
          $Res Function(_$SwidInstantiatedGenericCtor) then) =
      __$$SwidInstantiatedGenericCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {SwidInstantiableGeneric instantiableGeneric,
      SwidReferenceDeclarationKind referenceDeclarationKind});

  @override
  $SwidInstantiableGenericCopyWith<$Res> get instantiableGeneric;
}

/// @nodoc
class __$$SwidInstantiatedGenericCtorCopyWithImpl<$Res>
    extends _$SwidInstantiatedGenericCopyWithImpl<$Res>
    implements _$$SwidInstantiatedGenericCtorCopyWith<$Res> {
  __$$SwidInstantiatedGenericCtorCopyWithImpl(
      _$SwidInstantiatedGenericCtor _value,
      $Res Function(_$SwidInstantiatedGenericCtor) _then)
      : super(_value, (v) => _then(v as _$SwidInstantiatedGenericCtor));

  @override
  _$SwidInstantiatedGenericCtor get _value =>
      super._value as _$SwidInstantiatedGenericCtor;

  @override
  $Res call({
    Object instantiableGeneric = freezed,
    Object referenceDeclarationKind = freezed,
  }) {
    return _then(_$SwidInstantiatedGenericCtor(
      instantiableGeneric: instantiableGeneric == freezed
          ? _value.instantiableGeneric
          : instantiableGeneric as SwidInstantiableGeneric,
      referenceDeclarationKind: referenceDeclarationKind == freezed
          ? _value.referenceDeclarationKind
          : referenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidInstantiatedGenericCtor implements _$SwidInstantiatedGenericCtor {
  _$_$SwidInstantiatedGenericCtor(
      {@required this.instantiableGeneric,
      @required this.referenceDeclarationKind})
      : assert(instantiableGeneric != null),
        assert(referenceDeclarationKind != null);

  factory _$_$SwidInstantiatedGenericCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidInstantiatedGenericCtorFromJson(json);

  @override
  final SwidInstantiableGeneric instantiableGeneric;
  @override
  final SwidReferenceDeclarationKind referenceDeclarationKind;

  @override
  String toString() {
    return 'SwidInstantiatedGeneric(instantiableGeneric: $instantiableGeneric, referenceDeclarationKind: $referenceDeclarationKind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidInstantiatedGenericCtor &&
            (identical(other.instantiableGeneric, instantiableGeneric) ||
                const DeepCollectionEquality()
                    .equals(other.instantiableGeneric, instantiableGeneric)) &&
            (identical(
                    other.referenceDeclarationKind, referenceDeclarationKind) ||
                const DeepCollectionEquality().equals(
                    other.referenceDeclarationKind, referenceDeclarationKind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(instantiableGeneric) ^
      const DeepCollectionEquality().hash(referenceDeclarationKind);

  @override
  _$$SwidInstantiatedGenericCtorCopyWith<_$SwidInstantiatedGenericCtor>
      get copyWith => __$$SwidInstantiatedGenericCtorCopyWithImpl<
          _$SwidInstantiatedGenericCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidInstantiatedGenericCtorToJson(this);
  }
}

abstract class _$SwidInstantiatedGenericCtor
    implements SwidInstantiatedGeneric {
  factory _$SwidInstantiatedGenericCtor(
          {@required SwidInstantiableGeneric instantiableGeneric,
          @required SwidReferenceDeclarationKind referenceDeclarationKind}) =
      _$_$SwidInstantiatedGenericCtor;

  factory _$SwidInstantiatedGenericCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidInstantiatedGenericCtor.fromJson;

  @override
  SwidInstantiableGeneric get instantiableGeneric;
  @override
  SwidReferenceDeclarationKind get referenceDeclarationKind;
  @override
  _$$SwidInstantiatedGenericCtorCopyWith<_$SwidInstantiatedGenericCtor>
      get copyWith;
}

SwidGenericInstantiator _$SwidGenericInstantiatorFromJson(
    Map<String, dynamic> json) {
  return _$SwidGenericInstantiatorCtor.fromJson(json);
}

/// @nodoc
class _$SwidGenericInstantiatorTearOff {
  const _$SwidGenericInstantiatorTearOff();

// ignore: unused_element
  _$SwidGenericInstantiatorCtor call(
      {@required String name,
      @required SwidInstantiatedGeneric instantiatedGeneric}) {
    return _$SwidGenericInstantiatorCtor(
      name: name,
      instantiatedGeneric: instantiatedGeneric,
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
  SwidInstantiatedGeneric get instantiatedGeneric;

  Map<String, dynamic> toJson();
  $SwidGenericInstantiatorCopyWith<SwidGenericInstantiator> get copyWith;
}

/// @nodoc
abstract class $SwidGenericInstantiatorCopyWith<$Res> {
  factory $SwidGenericInstantiatorCopyWith(SwidGenericInstantiator value,
          $Res Function(SwidGenericInstantiator) then) =
      _$SwidGenericInstantiatorCopyWithImpl<$Res>;
  $Res call({String name, SwidInstantiatedGeneric instantiatedGeneric});

  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric;
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
    Object instantiatedGeneric = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      instantiatedGeneric: instantiatedGeneric == freezed
          ? _value.instantiatedGeneric
          : instantiatedGeneric as SwidInstantiatedGeneric,
    ));
  }

  @override
  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric {
    if (_value.instantiatedGeneric == null) {
      return null;
    }
    return $SwidInstantiatedGenericCopyWith<$Res>(_value.instantiatedGeneric,
        (value) {
      return _then(_value.copyWith(instantiatedGeneric: value));
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
  $Res call({String name, SwidInstantiatedGeneric instantiatedGeneric});

  @override
  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric;
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
    Object instantiatedGeneric = freezed,
  }) {
    return _then(_$SwidGenericInstantiatorCtor(
      name: name == freezed ? _value.name : name as String,
      instantiatedGeneric: instantiatedGeneric == freezed
          ? _value.instantiatedGeneric
          : instantiatedGeneric as SwidInstantiatedGeneric,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidGenericInstantiatorCtor implements _$SwidGenericInstantiatorCtor {
  _$_$SwidGenericInstantiatorCtor(
      {@required this.name, @required this.instantiatedGeneric})
      : assert(name != null),
        assert(instantiatedGeneric != null);

  factory _$_$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidGenericInstantiatorCtorFromJson(json);

  @override
  final String name;
  @override
  final SwidInstantiatedGeneric instantiatedGeneric;

  @override
  String toString() {
    return 'SwidGenericInstantiator(name: $name, instantiatedGeneric: $instantiatedGeneric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidGenericInstantiatorCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.instantiatedGeneric, instantiatedGeneric) ||
                const DeepCollectionEquality()
                    .equals(other.instantiatedGeneric, instantiatedGeneric)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(instantiatedGeneric);

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
          @required SwidInstantiatedGeneric instantiatedGeneric}) =
      _$_$SwidGenericInstantiatorCtor;

  factory _$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidGenericInstantiatorCtor.fromJson;

  @override
  String get name;
  @override
  SwidInstantiatedGeneric get instantiatedGeneric;
  @override
  _$$SwidGenericInstantiatorCtorCopyWith<_$SwidGenericInstantiatorCtor>
      get copyWith;
}
