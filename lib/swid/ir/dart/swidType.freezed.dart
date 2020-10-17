// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidType _$SwidTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidInterface':
      return _$FromSwidInterface.fromJson(json);
    case 'fromSwidClass':
      return _$FromSwidClass.fromJson(json);
    case 'fromSwidDefaultFormalParameter':
      return _$FromSwidDefaultFormalParameter.fromJson(json);
    case 'fromSwidFunctionType':
      return _$FromSwidFunctionType.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidTypeTearOff {
  const _$SwidTypeTearOff();

// ignore: unused_element
  _$FromSwidInterface fromSwidInterface(
      {@required SwidInterface swidInterface}) {
    return _$FromSwidInterface(
      swidInterface: swidInterface,
    );
  }

// ignore: unused_element
  _$FromSwidClass fromSwidClass({@required SwidClass swidClass}) {
    return _$FromSwidClass(
      swidClass: swidClass,
    );
  }

// ignore: unused_element
  _$FromSwidDefaultFormalParameter fromSwidDefaultFormalParameter(
      {@required SwidDefaultFormalParameter swidDefaultFormalParameter}) {
    return _$FromSwidDefaultFormalParameter(
      swidDefaultFormalParameter: swidDefaultFormalParameter,
    );
  }

// ignore: unused_element
  _$FromSwidFunctionType fromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) {
    return _$FromSwidFunctionType(
      swidFunctionType: swidFunctionType,
    );
  }

// ignore: unused_element
  SwidType fromJson(Map<String, Object> json) {
    return SwidType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidType = _$SwidTypeTearOff();

/// @nodoc
mixin _$SwidType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidClass(SwidClass swidClass),
    @required
        Result fromSwidDefaultFormalParameter(
            SwidDefaultFormalParameter swidDefaultFormalParameter),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidDefaultFormalParameter(
        SwidDefaultFormalParameter swidDefaultFormalParameter),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required
        Result fromSwidDefaultFormalParameter(
            _$FromSwidDefaultFormalParameter value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidDefaultFormalParameter(
        _$FromSwidDefaultFormalParameter value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $SwidTypeCopyWith<$Res> {
  factory $SwidTypeCopyWith(SwidType value, $Res Function(SwidType) then) =
      _$SwidTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidTypeCopyWithImpl<$Res> implements $SwidTypeCopyWith<$Res> {
  _$SwidTypeCopyWithImpl(this._value, this._then);

  final SwidType _value;
  // ignore: unused_field
  final $Res Function(SwidType) _then;
}

/// @nodoc
abstract class _$$FromSwidInterfaceCopyWith<$Res> {
  factory _$$FromSwidInterfaceCopyWith(
          _$FromSwidInterface value, $Res Function(_$FromSwidInterface) then) =
      __$$FromSwidInterfaceCopyWithImpl<$Res>;
  $Res call({SwidInterface swidInterface});

  $SwidInterfaceCopyWith<$Res> get swidInterface;
}

/// @nodoc
class __$$FromSwidInterfaceCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidInterfaceCopyWith<$Res> {
  __$$FromSwidInterfaceCopyWithImpl(
      _$FromSwidInterface _value, $Res Function(_$FromSwidInterface) _then)
      : super(_value, (v) => _then(v as _$FromSwidInterface));

  @override
  _$FromSwidInterface get _value => super._value as _$FromSwidInterface;

  @override
  $Res call({
    Object swidInterface = freezed,
  }) {
    return _then(_$FromSwidInterface(
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
class _$_$FromSwidInterface implements _$FromSwidInterface {
  _$_$FromSwidInterface({@required this.swidInterface})
      : assert(swidInterface != null);

  factory _$_$FromSwidInterface.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidInterfaceFromJson(json);

  @override
  final SwidInterface swidInterface;

  @override
  String toString() {
    return 'SwidType.fromSwidInterface(swidInterface: $swidInterface)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidInterface &&
            (identical(other.swidInterface, swidInterface) ||
                const DeepCollectionEquality()
                    .equals(other.swidInterface, swidInterface)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidInterface);

  @override
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith =>
      __$$FromSwidInterfaceCopyWithImpl<_$FromSwidInterface>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidClass(SwidClass swidClass),
    @required
        Result fromSwidDefaultFormalParameter(
            SwidDefaultFormalParameter swidDefaultFormalParameter),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidDefaultFormalParameter(
        SwidDefaultFormalParameter swidDefaultFormalParameter),
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
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required
        Result fromSwidDefaultFormalParameter(
            _$FromSwidDefaultFormalParameter value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidDefaultFormalParameter(
        _$FromSwidDefaultFormalParameter value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
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
    return _$_$_$FromSwidInterfaceToJson(this)
      ..['runtimeType'] = 'fromSwidInterface';
  }
}

abstract class _$FromSwidInterface implements SwidType {
  factory _$FromSwidInterface({@required SwidInterface swidInterface}) =
      _$_$FromSwidInterface;

  factory _$FromSwidInterface.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidInterface.fromJson;

  SwidInterface get swidInterface;
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith;
}

/// @nodoc
abstract class _$$FromSwidClassCopyWith<$Res> {
  factory _$$FromSwidClassCopyWith(
          _$FromSwidClass value, $Res Function(_$FromSwidClass) then) =
      __$$FromSwidClassCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$FromSwidClassCopyWithImpl<$Res> extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidClassCopyWith<$Res> {
  __$$FromSwidClassCopyWithImpl(
      _$FromSwidClass _value, $Res Function(_$FromSwidClass) _then)
      : super(_value, (v) => _then(v as _$FromSwidClass));

  @override
  _$FromSwidClass get _value => super._value as _$FromSwidClass;

  @override
  $Res call({
    Object swidClass = freezed,
  }) {
    return _then(_$FromSwidClass(
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
class _$_$FromSwidClass implements _$FromSwidClass {
  _$_$FromSwidClass({@required this.swidClass}) : assert(swidClass != null);

  factory _$_$FromSwidClass.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidClassFromJson(json);

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'SwidType.fromSwidClass(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidClass &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @override
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      __$$FromSwidClassCopyWithImpl<_$FromSwidClass>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidClass(SwidClass swidClass),
    @required
        Result fromSwidDefaultFormalParameter(
            SwidDefaultFormalParameter swidDefaultFormalParameter),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidDefaultFormalParameter(
        SwidDefaultFormalParameter swidDefaultFormalParameter),
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
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required
        Result fromSwidDefaultFormalParameter(
            _$FromSwidDefaultFormalParameter value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidDefaultFormalParameter(
        _$FromSwidDefaultFormalParameter value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
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
    return _$_$_$FromSwidClassToJson(this)..['runtimeType'] = 'fromSwidClass';
  }
}

abstract class _$FromSwidClass implements SwidType {
  factory _$FromSwidClass({@required SwidClass swidClass}) = _$_$FromSwidClass;

  factory _$FromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidClass.fromJson;

  SwidClass get swidClass;
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith;
}

/// @nodoc
abstract class _$$FromSwidDefaultFormalParameterCopyWith<$Res> {
  factory _$$FromSwidDefaultFormalParameterCopyWith(
          _$FromSwidDefaultFormalParameter value,
          $Res Function(_$FromSwidDefaultFormalParameter) then) =
      __$$FromSwidDefaultFormalParameterCopyWithImpl<$Res>;
  $Res call({SwidDefaultFormalParameter swidDefaultFormalParameter});

  $SwidDefaultFormalParameterCopyWith<$Res> get swidDefaultFormalParameter;
}

/// @nodoc
class __$$FromSwidDefaultFormalParameterCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidDefaultFormalParameterCopyWith<$Res> {
  __$$FromSwidDefaultFormalParameterCopyWithImpl(
      _$FromSwidDefaultFormalParameter _value,
      $Res Function(_$FromSwidDefaultFormalParameter) _then)
      : super(_value, (v) => _then(v as _$FromSwidDefaultFormalParameter));

  @override
  _$FromSwidDefaultFormalParameter get _value =>
      super._value as _$FromSwidDefaultFormalParameter;

  @override
  $Res call({
    Object swidDefaultFormalParameter = freezed,
  }) {
    return _then(_$FromSwidDefaultFormalParameter(
      swidDefaultFormalParameter: swidDefaultFormalParameter == freezed
          ? _value.swidDefaultFormalParameter
          : swidDefaultFormalParameter as SwidDefaultFormalParameter,
    ));
  }

  @override
  $SwidDefaultFormalParameterCopyWith<$Res> get swidDefaultFormalParameter {
    if (_value.swidDefaultFormalParameter == null) {
      return null;
    }
    return $SwidDefaultFormalParameterCopyWith<$Res>(
        _value.swidDefaultFormalParameter, (value) {
      return _then(_value.copyWith(swidDefaultFormalParameter: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSwidDefaultFormalParameter
    implements _$FromSwidDefaultFormalParameter {
  _$_$FromSwidDefaultFormalParameter(
      {@required this.swidDefaultFormalParameter})
      : assert(swidDefaultFormalParameter != null);

  factory _$_$FromSwidDefaultFormalParameter.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$FromSwidDefaultFormalParameterFromJson(json);

  @override
  final SwidDefaultFormalParameter swidDefaultFormalParameter;

  @override
  String toString() {
    return 'SwidType.fromSwidDefaultFormalParameter(swidDefaultFormalParameter: $swidDefaultFormalParameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidDefaultFormalParameter &&
            (identical(other.swidDefaultFormalParameter,
                    swidDefaultFormalParameter) ||
                const DeepCollectionEquality().equals(
                    other.swidDefaultFormalParameter,
                    swidDefaultFormalParameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidDefaultFormalParameter);

  @override
  _$$FromSwidDefaultFormalParameterCopyWith<_$FromSwidDefaultFormalParameter>
      get copyWith => __$$FromSwidDefaultFormalParameterCopyWithImpl<
          _$FromSwidDefaultFormalParameter>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidClass(SwidClass swidClass),
    @required
        Result fromSwidDefaultFormalParameter(
            SwidDefaultFormalParameter swidDefaultFormalParameter),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidDefaultFormalParameter(swidDefaultFormalParameter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidDefaultFormalParameter(
        SwidDefaultFormalParameter swidDefaultFormalParameter),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidDefaultFormalParameter != null) {
      return fromSwidDefaultFormalParameter(swidDefaultFormalParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required
        Result fromSwidDefaultFormalParameter(
            _$FromSwidDefaultFormalParameter value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidDefaultFormalParameter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidDefaultFormalParameter(
        _$FromSwidDefaultFormalParameter value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidDefaultFormalParameter != null) {
      return fromSwidDefaultFormalParameter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidDefaultFormalParameterToJson(this)
      ..['runtimeType'] = 'fromSwidDefaultFormalParameter';
  }
}

abstract class _$FromSwidDefaultFormalParameter implements SwidType {
  factory _$FromSwidDefaultFormalParameter(
          {@required SwidDefaultFormalParameter swidDefaultFormalParameter}) =
      _$_$FromSwidDefaultFormalParameter;

  factory _$FromSwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidDefaultFormalParameter.fromJson;

  SwidDefaultFormalParameter get swidDefaultFormalParameter;
  _$$FromSwidDefaultFormalParameterCopyWith<_$FromSwidDefaultFormalParameter>
      get copyWith;
}

/// @nodoc
abstract class _$$FromSwidFunctionTypeCopyWith<$Res> {
  factory _$$FromSwidFunctionTypeCopyWith(_$FromSwidFunctionType value,
          $Res Function(_$FromSwidFunctionType) then) =
      __$$FromSwidFunctionTypeCopyWithImpl<$Res>;
  $Res call({SwidFunctionType swidFunctionType});

  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType;
}

/// @nodoc
class __$$FromSwidFunctionTypeCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidFunctionTypeCopyWith<$Res> {
  __$$FromSwidFunctionTypeCopyWithImpl(_$FromSwidFunctionType _value,
      $Res Function(_$FromSwidFunctionType) _then)
      : super(_value, (v) => _then(v as _$FromSwidFunctionType));

  @override
  _$FromSwidFunctionType get _value => super._value as _$FromSwidFunctionType;

  @override
  $Res call({
    Object swidFunctionType = freezed,
  }) {
    return _then(_$FromSwidFunctionType(
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
class _$_$FromSwidFunctionType implements _$FromSwidFunctionType {
  _$_$FromSwidFunctionType({@required this.swidFunctionType})
      : assert(swidFunctionType != null);

  factory _$_$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidFunctionTypeFromJson(json);

  @override
  final SwidFunctionType swidFunctionType;

  @override
  String toString() {
    return 'SwidType.fromSwidFunctionType(swidFunctionType: $swidFunctionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidFunctionType &&
            (identical(other.swidFunctionType, swidFunctionType) ||
                const DeepCollectionEquality()
                    .equals(other.swidFunctionType, swidFunctionType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidFunctionType);

  @override
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith =>
      __$$FromSwidFunctionTypeCopyWithImpl<_$FromSwidFunctionType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidClass(SwidClass swidClass),
    @required
        Result fromSwidDefaultFormalParameter(
            SwidDefaultFormalParameter swidDefaultFormalParameter),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidDefaultFormalParameter(
        SwidDefaultFormalParameter swidDefaultFormalParameter),
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
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required
        Result fromSwidDefaultFormalParameter(
            _$FromSwidDefaultFormalParameter value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromSwidInterface != null);
    assert(fromSwidClass != null);
    assert(fromSwidDefaultFormalParameter != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidDefaultFormalParameter(
        _$FromSwidDefaultFormalParameter value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
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
    return _$_$_$FromSwidFunctionTypeToJson(this)
      ..['runtimeType'] = 'fromSwidFunctionType';
  }
}

abstract class _$FromSwidFunctionType implements SwidType {
  factory _$FromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) = _$_$FromSwidFunctionType;

  factory _$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType;
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith;
}
