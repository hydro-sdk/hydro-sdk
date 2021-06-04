// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidTypeFormal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  _$FromString fromString({required String string}) {
    return _$FromString(
      string: string,
    );
  }

  _$FromSwidClass fromSwidClass({required SwidClass swidClass}) {
    return _$FromSwidClass(
      swidClass: swidClass,
    );
  }

  _$FromSwidInterface fromSwidInterface(
      {required SwidInterface swidInterface}) {
    return _$FromSwidInterface(
      swidInterface: swidInterface,
    );
  }

  _$FromSwidFunctionType fromSwidFunctionType(
      {required SwidFunctionType swidFunctionType}) {
    return _$FromSwidFunctionType(
      swidFunctionType: swidFunctionType,
    );
  }

  SwidTypeFormalValue fromJson(Map<String, Object> json) {
    return SwidTypeFormalValue.fromJson(json);
  }
}

/// @nodoc
const $SwidTypeFormalValue = _$SwidTypeFormalValueTearOff();

/// @nodoc
mixin _$SwidTypeFormalValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) fromString,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? fromString,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromString value) fromString,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromString value)? fromString,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
    Object? string = freezed,
  }) {
    return _then(_$FromString(
      string: string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$FromString implements _$FromString {
  const _$_$FromString({required this.string});

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

  @JsonKey(ignore: true)
  @override
  _$$FromStringCopyWith<_$FromString> get copyWith =>
      __$$FromStringCopyWithImpl<_$FromString>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) fromString,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromString(string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? fromString,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromString != null) {
      return fromString(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromString value) fromString,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromString value)? fromString,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
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
  const factory _$FromString({required String string}) = _$_$FromString;

  factory _$FromString.fromJson(Map<String, dynamic> json) =
      _$_$FromString.fromJson;

  String get string => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromStringCopyWith<_$FromString> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? swidClass = freezed,
  }) {
    return _then(_$FromSwidClass(
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
class _$_$FromSwidClass implements _$FromSwidClass {
  const _$_$FromSwidClass({required this.swidClass});

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

  @JsonKey(ignore: true)
  @override
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      __$$FromSwidClassCopyWithImpl<_$FromSwidClass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) fromString,
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
    TResult Function(String string)? fromString,
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
    required TResult Function(_$FromString value) fromString,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromString value)? fromString,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
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
  const factory _$FromSwidClass({required SwidClass swidClass}) =
      _$_$FromSwidClass;

  factory _$FromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidClass.fromJson;

  SwidClass get swidClass => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? swidInterface = freezed,
  }) {
    return _then(_$FromSwidInterface(
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
class _$_$FromSwidInterface implements _$FromSwidInterface {
  const _$_$FromSwidInterface({required this.swidInterface});

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

  @JsonKey(ignore: true)
  @override
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith =>
      __$$FromSwidInterfaceCopyWithImpl<_$FromSwidInterface>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) fromString,
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
    TResult Function(String string)? fromString,
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
    required TResult Function(_$FromString value) fromString,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromString value)? fromString,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
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
  const factory _$FromSwidInterface({required SwidInterface swidInterface}) =
      _$_$FromSwidInterface;

  factory _$FromSwidInterface.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidInterface.fromJson;

  SwidInterface get swidInterface => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? swidFunctionType = freezed,
  }) {
    return _then(_$FromSwidFunctionType(
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
class _$_$FromSwidFunctionType implements _$FromSwidFunctionType {
  const _$_$FromSwidFunctionType({required this.swidFunctionType});

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

  @JsonKey(ignore: true)
  @override
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith =>
      __$$FromSwidFunctionTypeCopyWithImpl<_$FromSwidFunctionType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) fromString,
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
    TResult Function(String string)? fromString,
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
    required TResult Function(_$FromString value) fromString,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromString value)? fromString,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
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
  const factory _$FromSwidFunctionType(
      {required SwidFunctionType swidFunctionType}) = _$_$FromSwidFunctionType;

  factory _$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith =>
      throw _privateConstructorUsedError;
}

SwidTypeFormal _$SwidTypeFormalFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidTypeFormalTearOff {
  const _$SwidTypeFormalTearOff();

  _$Data call(
      {required SwidTypeFormalValue value,
      required SwidReferenceDeclarationKind swidReferenceDeclarationKind}) {
    return _$Data(
      value: value,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind,
    );
  }

  SwidTypeFormal fromJson(Map<String, Object> json) {
    return SwidTypeFormal.fromJson(json);
  }
}

/// @nodoc
const $SwidTypeFormal = _$SwidTypeFormalTearOff();

/// @nodoc
mixin _$SwidTypeFormal {
  SwidTypeFormalValue get value => throw _privateConstructorUsedError;
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidTypeFormalCopyWith<SwidTypeFormal> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? value = freezed,
    Object? swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidTypeFormalValue,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind // ignore: cast_nullable_to_non_nullable
              as SwidReferenceDeclarationKind,
    ));
  }

  @override
  $SwidTypeFormalValueCopyWith<$Res> get value {
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
    Object? value = freezed,
    Object? swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_$Data(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidTypeFormalValue,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind // ignore: cast_nullable_to_non_nullable
              as SwidReferenceDeclarationKind,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data implements _$Data {
  const _$_$Data(
      {required this.value, required this.swidReferenceDeclarationKind});

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

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidTypeFormal {
  const factory _$Data(
          {required SwidTypeFormalValue value,
          required SwidReferenceDeclarationKind swidReferenceDeclarationKind}) =
      _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  SwidTypeFormalValue get value => throw _privateConstructorUsedError;
  @override
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
