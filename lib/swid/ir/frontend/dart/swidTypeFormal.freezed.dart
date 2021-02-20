// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidTypeFormal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidTypeFormalValue _$SwidTypeFormalValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromString':
      return _$FromString.fromJson(json);
    case 'fromSwidClass':
      return _$FromSwidClass.fromJson(json);
    case 'fromSwidInterface':
      return _$FromSwidInterface.fromJson(json);
    case 'fromSwidFunctionType':
      return _$FromSwidFunctionType.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidTypeFormalValueTearOff {
  const _$SwidTypeFormalValueTearOff();

// ignore: unused_element
  _$FromString fromString({@required String string}) {
    return _$FromString(
      string: string,
    );
  }

// ignore: unused_element
  _$FromSwidClass fromSwidClass({@required SwidClass swidClass}) {
    return _$FromSwidClass(
      swidClass: swidClass,
    );
  }

// ignore: unused_element
  _$FromSwidInterface fromSwidInterface(
      {@required SwidInterface swidInterface}) {
    return _$FromSwidInterface(
      swidInterface: swidInterface,
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
  SwidTypeFormalValue fromJson(Map<String, Object> json) {
    return SwidTypeFormalValue.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidTypeFormalValue = _$SwidTypeFormalValueTearOff();

/// @nodoc
mixin _$SwidTypeFormalValue {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromString(String string),
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromString(String string),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromString(_$FromString value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromString(_$FromString value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $SwidTypeFormalValueCopyWith<$Res> {
  factory $SwidTypeFormalValueCopyWith(
          SwidTypeFormalValue value, $Res Function(SwidTypeFormalValue) then) =
      _$SwidTypeFormalValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidTypeFormalValueCopyWithImpl<$Res>
    implements $SwidTypeFormalValueCopyWith<$Res> {
  _$SwidTypeFormalValueCopyWithImpl(this._value, this._then);

  final SwidTypeFormalValue _value;
  // ignore: unused_field
  final $Res Function(SwidTypeFormalValue) _then;
}

/// @nodoc
abstract class _$$FromStringCopyWith<$Res> {
  factory _$$FromStringCopyWith(
          _$FromString value, $Res Function(_$FromString) then) =
      __$$FromStringCopyWithImpl<$Res>;
  $Res call({String string});
}

/// @nodoc
class __$$FromStringCopyWithImpl<$Res>
    extends _$SwidTypeFormalValueCopyWithImpl<$Res>
    implements _$$FromStringCopyWith<$Res> {
  __$$FromStringCopyWithImpl(
      _$FromString _value, $Res Function(_$FromString) _then)
      : super(_value, (v) => _then(v as _$FromString));

  @override
  _$FromString get _value => super._value as _$FromString;

  @override
  $Res call({
    Object string = freezed,
  }) {
    return _then(_$FromString(
      string: string == freezed ? _value.string : string as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromString implements _$FromString {
  _$_$FromString({@required this.string}) : assert(string != null);

  factory _$_$FromString.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromStringFromJson(json);

  @override
  final String string;

  @override
  String toString() {
    return 'SwidTypeFormalValue.fromString(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromString &&
            (identical(other.string, string) ||
                const DeepCollectionEquality().equals(other.string, string)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(string);

  @override
  _$$FromStringCopyWith<_$FromString> get copyWith =>
      __$$FromStringCopyWithImpl<_$FromString>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromString(String string),
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromString(string);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromString(String string),
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidInterface(SwidInterface swidInterface),
    Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromString != null) {
      return fromString(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromString(_$FromString value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromString(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromString(_$FromString value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidInterface(_$FromSwidInterface value),
    Result fromSwidFunctionType(_$FromSwidFunctionType value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromString != null) {
      return fromString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromStringToJson(this)..['runtimeType'] = 'fromString';
  }
}

abstract class _$FromString implements SwidTypeFormalValue {
  factory _$FromString({@required String string}) = _$_$FromString;

  factory _$FromString.fromJson(Map<String, dynamic> json) =
      _$_$FromString.fromJson;

  String get string;
  _$$FromStringCopyWith<_$FromString> get copyWith;
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
class __$$FromSwidClassCopyWithImpl<$Res>
    extends _$SwidTypeFormalValueCopyWithImpl<$Res>
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
    return 'SwidTypeFormalValue.fromSwidClass(swidClass: $swidClass)';
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
    @required Result fromString(String string),
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromString(String string),
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
    @required Result fromString(_$FromString value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromString(_$FromString value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidInterface(_$FromSwidInterface value),
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

abstract class _$FromSwidClass implements SwidTypeFormalValue {
  factory _$FromSwidClass({@required SwidClass swidClass}) = _$_$FromSwidClass;

  factory _$FromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidClass.fromJson;

  SwidClass get swidClass;
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith;
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
    extends _$SwidTypeFormalValueCopyWithImpl<$Res>
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
    return 'SwidTypeFormalValue.fromSwidInterface(swidInterface: $swidInterface)';
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
    @required Result fromString(String string),
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromString(String string),
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
    @required Result fromString(_$FromString value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromString(_$FromString value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidInterface(_$FromSwidInterface value),
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

abstract class _$FromSwidInterface implements SwidTypeFormalValue {
  factory _$FromSwidInterface({@required SwidInterface swidInterface}) =
      _$_$FromSwidInterface;

  factory _$FromSwidInterface.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidInterface.fromJson;

  SwidInterface get swidInterface;
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith;
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
    extends _$SwidTypeFormalValueCopyWithImpl<$Res>
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
    return 'SwidTypeFormalValue.fromSwidFunctionType(swidFunctionType: $swidFunctionType)';
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
    @required Result fromString(String string),
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidInterface(SwidInterface swidInterface),
    @required Result fromSwidFunctionType(SwidFunctionType swidFunctionType),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromString(String string),
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
    @required Result fromString(_$FromString value),
    @required Result fromSwidClass(_$FromSwidClass value),
    @required Result fromSwidInterface(_$FromSwidInterface value),
    @required Result fromSwidFunctionType(_$FromSwidFunctionType value),
  }) {
    assert(fromString != null);
    assert(fromSwidClass != null);
    assert(fromSwidInterface != null);
    assert(fromSwidFunctionType != null);
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromString(_$FromString value),
    Result fromSwidClass(_$FromSwidClass value),
    Result fromSwidInterface(_$FromSwidInterface value),
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

abstract class _$FromSwidFunctionType implements SwidTypeFormalValue {
  factory _$FromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) = _$_$FromSwidFunctionType;

  factory _$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType;
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith;
}

SwidTypeFormal _$SwidTypeFormalFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidTypeFormalTearOff {
  const _$SwidTypeFormalTearOff();

// ignore: unused_element
  _$Data call(
      {@required SwidTypeFormalValue value,
      @required SwidReferenceDeclarationKind swidReferenceDeclarationKind}) {
    return _$Data(
      value: value,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind,
    );
  }

// ignore: unused_element
  SwidTypeFormal fromJson(Map<String, Object> json) {
    return SwidTypeFormal.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidTypeFormal = _$SwidTypeFormalTearOff();

/// @nodoc
mixin _$SwidTypeFormal {
  SwidTypeFormalValue get value;
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind;

  Map<String, dynamic> toJson();
  $SwidTypeFormalCopyWith<SwidTypeFormal> get copyWith;
}

/// @nodoc
abstract class $SwidTypeFormalCopyWith<$Res> {
  factory $SwidTypeFormalCopyWith(
          SwidTypeFormal value, $Res Function(SwidTypeFormal) then) =
      _$SwidTypeFormalCopyWithImpl<$Res>;
  $Res call(
      {SwidTypeFormalValue value,
      SwidReferenceDeclarationKind swidReferenceDeclarationKind});

  $SwidTypeFormalValueCopyWith<$Res> get value;
}

/// @nodoc
class _$SwidTypeFormalCopyWithImpl<$Res>
    implements $SwidTypeFormalCopyWith<$Res> {
  _$SwidTypeFormalCopyWithImpl(this._value, this._then);

  final SwidTypeFormal _value;
  // ignore: unused_field
  final $Res Function(SwidTypeFormal) _then;

  @override
  $Res call({
    Object value = freezed,
    Object swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as SwidTypeFormalValue,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }

  @override
  $SwidTypeFormalValueCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $SwidTypeFormalValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $SwidTypeFormalCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {SwidTypeFormalValue value,
      SwidReferenceDeclarationKind swidReferenceDeclarationKind});

  @override
  $SwidTypeFormalValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidTypeFormalCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object value = freezed,
    Object swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_$Data(
      value: value == freezed ? _value.value : value as SwidTypeFormalValue,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data({@required this.value, @required this.swidReferenceDeclarationKind})
      : assert(value != null),
        assert(swidReferenceDeclarationKind != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final SwidTypeFormalValue value;
  @override
  final SwidReferenceDeclarationKind swidReferenceDeclarationKind;

  @override
  String toString() {
    return 'SwidTypeFormal(value: $value, swidReferenceDeclarationKind: $swidReferenceDeclarationKind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.swidReferenceDeclarationKind,
                    swidReferenceDeclarationKind) ||
                const DeepCollectionEquality().equals(
                    other.swidReferenceDeclarationKind,
                    swidReferenceDeclarationKind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(swidReferenceDeclarationKind);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidTypeFormal {
  factory _$Data(
          {@required
              SwidTypeFormalValue value,
          @required
              SwidReferenceDeclarationKind swidReferenceDeclarationKind}) =
      _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  SwidTypeFormalValue get value;
  @override
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
