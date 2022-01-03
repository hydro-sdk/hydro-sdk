// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidDeclarationModifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StringTuple _$StringTupleFromJson(Map<String, dynamic> json) {
  return _$StringTupleCtor.fromJson(json);
}

/// @nodoc
class _$StringTupleTearOff {
  const _$StringTupleTearOff();

  _$StringTupleCtor call({required String item1, required String item2}) {
    return _$StringTupleCtor(
      item1: item1,
      item2: item2,
    );
  }

  StringTuple fromJson(Map<String, Object> json) {
    return StringTuple.fromJson(json);
  }
}

/// @nodoc
const $StringTuple = _$StringTupleTearOff();

/// @nodoc
mixin _$StringTuple {
  String get item1 => throw _privateConstructorUsedError;
  String get item2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringTupleCopyWith<StringTuple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringTupleCopyWith<$Res> {
  factory $StringTupleCopyWith(
          StringTuple value, $Res Function(StringTuple) then) =
      _$StringTupleCopyWithImpl<$Res>;
  $Res call({String item1, String item2});
}

/// @nodoc
class _$StringTupleCopyWithImpl<$Res> implements $StringTupleCopyWith<$Res> {
  _$StringTupleCopyWithImpl(this._value, this._then);

  final StringTuple _value;
  // ignore: unused_field
  final $Res Function(StringTuple) _then;

  @override
  $Res call({
    Object? item1 = freezed,
    Object? item2 = freezed,
  }) {
    return _then(_value.copyWith(
      item1: item1 == freezed
          ? _value.item1
          : item1 // ignore: cast_nullable_to_non_nullable
              as String,
      item2: item2 == freezed
          ? _value.item2
          : item2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$StringTupleCtorCopyWith<$Res>
    implements $StringTupleCopyWith<$Res> {
  factory _$$StringTupleCtorCopyWith(
          _$StringTupleCtor value, $Res Function(_$StringTupleCtor) then) =
      __$$StringTupleCtorCopyWithImpl<$Res>;
  @override
  $Res call({String item1, String item2});
}

/// @nodoc
class __$$StringTupleCtorCopyWithImpl<$Res>
    extends _$StringTupleCopyWithImpl<$Res>
    implements _$$StringTupleCtorCopyWith<$Res> {
  __$$StringTupleCtorCopyWithImpl(
      _$StringTupleCtor _value, $Res Function(_$StringTupleCtor) _then)
      : super(_value, (v) => _then(v as _$StringTupleCtor));

  @override
  _$StringTupleCtor get _value => super._value as _$StringTupleCtor;

  @override
  $Res call({
    Object? item1 = freezed,
    Object? item2 = freezed,
  }) {
    return _then(_$StringTupleCtor(
      item1: item1 == freezed
          ? _value.item1
          : item1 // ignore: cast_nullable_to_non_nullable
              as String,
      item2: item2 == freezed
          ? _value.item2
          : item2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$StringTupleCtor extends _$StringTupleCtor {
  _$_$StringTupleCtor({required this.item1, required this.item2}) : super._();

  factory _$_$StringTupleCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$StringTupleCtorFromJson(json);

  @override
  final String item1;
  @override
  final String item2;

  @override
  String toString() {
    return 'StringTuple(item1: $item1, item2: $item2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$StringTupleCtor &&
            (identical(other.item1, item1) ||
                const DeepCollectionEquality().equals(other.item1, item1)) &&
            (identical(other.item2, item2) ||
                const DeepCollectionEquality().equals(other.item2, item2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item1) ^
      const DeepCollectionEquality().hash(item2);

  @JsonKey(ignore: true)
  @override
  _$$StringTupleCtorCopyWith<_$StringTupleCtor> get copyWith =>
      __$$StringTupleCtorCopyWithImpl<_$StringTupleCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$StringTupleCtorToJson(this);
  }
}

abstract class _$StringTupleCtor extends StringTuple {
  factory _$StringTupleCtor({required String item1, required String item2}) =
      _$_$StringTupleCtor;
  _$StringTupleCtor._() : super._();

  factory _$StringTupleCtor.fromJson(Map<String, dynamic> json) =
      _$_$StringTupleCtor.fromJson;

  @override
  String get item1 => throw _privateConstructorUsedError;
  @override
  String get item2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StringTupleCtorCopyWith<_$StringTupleCtor> get copyWith =>
      throw _privateConstructorUsedError;
}

SwidDeclarationModifiers _$SwidDeclarationModifiersFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidDeclarationModifiersTearOff {
  const _$SwidDeclarationModifiersTearOff();

  _$Data call(
      {required List<String> ignoredTransforms,
      required List<String> ignoredAnalyses,
      required List<StringTuple> overridenTransforms,
      required bool isAbstract,
      required bool isGetter,
      required bool isOperator,
      required bool isSetter,
      required bool isStatic,
      required bool isSynthetic,
      required bool isCovariant,
      required bool isExplicitlyCovariant,
      required bool hasAlwaysThrows,
      required bool hasDeprecated,
      required bool hasFactory,
      required bool hasImplicitReturnType,
      required bool hasIsTest,
      required bool hasIsTestGroup,
      required bool hasJS,
      required bool hasLiteral,
      required bool hasMustCallSuper,
      required bool hasNonVirtual,
      required bool hasOptionalTypeArgs,
      required bool hasOverride,
      required bool hasProtected,
      required bool hasRequired,
      required bool hasSealed,
      required bool hasVisibleForTemplate,
      required bool hasVisibleForTesting,
      required bool isPublic}) {
    return _$Data(
      ignoredTransforms: ignoredTransforms,
      ignoredAnalyses: ignoredAnalyses,
      overridenTransforms: overridenTransforms,
      isAbstract: isAbstract,
      isGetter: isGetter,
      isOperator: isOperator,
      isSetter: isSetter,
      isStatic: isStatic,
      isSynthetic: isSynthetic,
      isCovariant: isCovariant,
      isExplicitlyCovariant: isExplicitlyCovariant,
      hasAlwaysThrows: hasAlwaysThrows,
      hasDeprecated: hasDeprecated,
      hasFactory: hasFactory,
      hasImplicitReturnType: hasImplicitReturnType,
      hasIsTest: hasIsTest,
      hasIsTestGroup: hasIsTestGroup,
      hasJS: hasJS,
      hasLiteral: hasLiteral,
      hasMustCallSuper: hasMustCallSuper,
      hasNonVirtual: hasNonVirtual,
      hasOptionalTypeArgs: hasOptionalTypeArgs,
      hasOverride: hasOverride,
      hasProtected: hasProtected,
      hasRequired: hasRequired,
      hasSealed: hasSealed,
      hasVisibleForTemplate: hasVisibleForTemplate,
      hasVisibleForTesting: hasVisibleForTesting,
      isPublic: isPublic,
    );
  }

  SwidDeclarationModifiers fromJson(Map<String, Object> json) {
    return SwidDeclarationModifiers.fromJson(json);
  }
}

/// @nodoc
const $SwidDeclarationModifiers = _$SwidDeclarationModifiersTearOff();

/// @nodoc
mixin _$SwidDeclarationModifiers {
  List<String> get ignoredTransforms => throw _privateConstructorUsedError;
  List<String> get ignoredAnalyses => throw _privateConstructorUsedError;
  List<StringTuple> get overridenTransforms =>
      throw _privateConstructorUsedError;
  bool get isAbstract => throw _privateConstructorUsedError;
  bool get isGetter => throw _privateConstructorUsedError;
  bool get isOperator => throw _privateConstructorUsedError;
  bool get isSetter => throw _privateConstructorUsedError;
  bool get isStatic => throw _privateConstructorUsedError;
  bool get isSynthetic => throw _privateConstructorUsedError;
  bool get isCovariant => throw _privateConstructorUsedError;
  bool get isExplicitlyCovariant => throw _privateConstructorUsedError;
  bool get hasAlwaysThrows => throw _privateConstructorUsedError;
  bool get hasDeprecated => throw _privateConstructorUsedError;
  bool get hasFactory => throw _privateConstructorUsedError;
  bool get hasImplicitReturnType => throw _privateConstructorUsedError;
  bool get hasIsTest => throw _privateConstructorUsedError;
  bool get hasIsTestGroup => throw _privateConstructorUsedError;
  bool get hasJS => throw _privateConstructorUsedError;
  bool get hasLiteral => throw _privateConstructorUsedError;
  bool get hasMustCallSuper => throw _privateConstructorUsedError;
  bool get hasNonVirtual => throw _privateConstructorUsedError;
  bool get hasOptionalTypeArgs => throw _privateConstructorUsedError;
  bool get hasOverride => throw _privateConstructorUsedError;
  bool get hasProtected => throw _privateConstructorUsedError;
  bool get hasRequired => throw _privateConstructorUsedError;
  bool get hasSealed => throw _privateConstructorUsedError;
  bool get hasVisibleForTemplate => throw _privateConstructorUsedError;
  bool get hasVisibleForTesting => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidDeclarationModifiersCopyWith<SwidDeclarationModifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidDeclarationModifiersCopyWith<$Res> {
  factory $SwidDeclarationModifiersCopyWith(SwidDeclarationModifiers value,
          $Res Function(SwidDeclarationModifiers) then) =
      _$SwidDeclarationModifiersCopyWithImpl<$Res>;
  $Res call(
      {List<String> ignoredTransforms,
      List<String> ignoredAnalyses,
      List<StringTuple> overridenTransforms,
      bool isAbstract,
      bool isGetter,
      bool isOperator,
      bool isSetter,
      bool isStatic,
      bool isSynthetic,
      bool isCovariant,
      bool isExplicitlyCovariant,
      bool hasAlwaysThrows,
      bool hasDeprecated,
      bool hasFactory,
      bool hasImplicitReturnType,
      bool hasIsTest,
      bool hasIsTestGroup,
      bool hasJS,
      bool hasLiteral,
      bool hasMustCallSuper,
      bool hasNonVirtual,
      bool hasOptionalTypeArgs,
      bool hasOverride,
      bool hasProtected,
      bool hasRequired,
      bool hasSealed,
      bool hasVisibleForTemplate,
      bool hasVisibleForTesting,
      bool isPublic});
}

/// @nodoc
class _$SwidDeclarationModifiersCopyWithImpl<$Res>
    implements $SwidDeclarationModifiersCopyWith<$Res> {
  _$SwidDeclarationModifiersCopyWithImpl(this._value, this._then);

  final SwidDeclarationModifiers _value;
  // ignore: unused_field
  final $Res Function(SwidDeclarationModifiers) _then;

  @override
  $Res call({
    Object? ignoredTransforms = freezed,
    Object? ignoredAnalyses = freezed,
    Object? overridenTransforms = freezed,
    Object? isAbstract = freezed,
    Object? isGetter = freezed,
    Object? isOperator = freezed,
    Object? isSetter = freezed,
    Object? isStatic = freezed,
    Object? isSynthetic = freezed,
    Object? isCovariant = freezed,
    Object? isExplicitlyCovariant = freezed,
    Object? hasAlwaysThrows = freezed,
    Object? hasDeprecated = freezed,
    Object? hasFactory = freezed,
    Object? hasImplicitReturnType = freezed,
    Object? hasIsTest = freezed,
    Object? hasIsTestGroup = freezed,
    Object? hasJS = freezed,
    Object? hasLiteral = freezed,
    Object? hasMustCallSuper = freezed,
    Object? hasNonVirtual = freezed,
    Object? hasOptionalTypeArgs = freezed,
    Object? hasOverride = freezed,
    Object? hasProtected = freezed,
    Object? hasRequired = freezed,
    Object? hasSealed = freezed,
    Object? hasVisibleForTemplate = freezed,
    Object? hasVisibleForTesting = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_value.copyWith(
      ignoredTransforms: ignoredTransforms == freezed
          ? _value.ignoredTransforms
          : ignoredTransforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ignoredAnalyses: ignoredAnalyses == freezed
          ? _value.ignoredAnalyses
          : ignoredAnalyses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overridenTransforms: overridenTransforms == freezed
          ? _value.overridenTransforms
          : overridenTransforms // ignore: cast_nullable_to_non_nullable
              as List<StringTuple>,
      isAbstract: isAbstract == freezed
          ? _value.isAbstract
          : isAbstract // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetter: isGetter == freezed
          ? _value.isGetter
          : isGetter // ignore: cast_nullable_to_non_nullable
              as bool,
      isOperator: isOperator == freezed
          ? _value.isOperator
          : isOperator // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetter: isSetter == freezed
          ? _value.isSetter
          : isSetter // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatic: isStatic == freezed
          ? _value.isStatic
          : isStatic // ignore: cast_nullable_to_non_nullable
              as bool,
      isSynthetic: isSynthetic == freezed
          ? _value.isSynthetic
          : isSynthetic // ignore: cast_nullable_to_non_nullable
              as bool,
      isCovariant: isCovariant == freezed
          ? _value.isCovariant
          : isCovariant // ignore: cast_nullable_to_non_nullable
              as bool,
      isExplicitlyCovariant: isExplicitlyCovariant == freezed
          ? _value.isExplicitlyCovariant
          : isExplicitlyCovariant // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAlwaysThrows: hasAlwaysThrows == freezed
          ? _value.hasAlwaysThrows
          : hasAlwaysThrows // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDeprecated: hasDeprecated == freezed
          ? _value.hasDeprecated
          : hasDeprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFactory: hasFactory == freezed
          ? _value.hasFactory
          : hasFactory // ignore: cast_nullable_to_non_nullable
              as bool,
      hasImplicitReturnType: hasImplicitReturnType == freezed
          ? _value.hasImplicitReturnType
          : hasImplicitReturnType // ignore: cast_nullable_to_non_nullable
              as bool,
      hasIsTest: hasIsTest == freezed
          ? _value.hasIsTest
          : hasIsTest // ignore: cast_nullable_to_non_nullable
              as bool,
      hasIsTestGroup: hasIsTestGroup == freezed
          ? _value.hasIsTestGroup
          : hasIsTestGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      hasJS: hasJS == freezed
          ? _value.hasJS
          : hasJS // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLiteral: hasLiteral == freezed
          ? _value.hasLiteral
          : hasLiteral // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMustCallSuper: hasMustCallSuper == freezed
          ? _value.hasMustCallSuper
          : hasMustCallSuper // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNonVirtual: hasNonVirtual == freezed
          ? _value.hasNonVirtual
          : hasNonVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOptionalTypeArgs: hasOptionalTypeArgs == freezed
          ? _value.hasOptionalTypeArgs
          : hasOptionalTypeArgs // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOverride: hasOverride == freezed
          ? _value.hasOverride
          : hasOverride // ignore: cast_nullable_to_non_nullable
              as bool,
      hasProtected: hasProtected == freezed
          ? _value.hasProtected
          : hasProtected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequired: hasRequired == freezed
          ? _value.hasRequired
          : hasRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSealed: hasSealed == freezed
          ? _value.hasSealed
          : hasSealed // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisibleForTemplate: hasVisibleForTemplate == freezed
          ? _value.hasVisibleForTemplate
          : hasVisibleForTemplate // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisibleForTesting: hasVisibleForTesting == freezed
          ? _value.hasVisibleForTesting
          : hasVisibleForTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidDeclarationModifiersCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> ignoredTransforms,
      List<String> ignoredAnalyses,
      List<StringTuple> overridenTransforms,
      bool isAbstract,
      bool isGetter,
      bool isOperator,
      bool isSetter,
      bool isStatic,
      bool isSynthetic,
      bool isCovariant,
      bool isExplicitlyCovariant,
      bool hasAlwaysThrows,
      bool hasDeprecated,
      bool hasFactory,
      bool hasImplicitReturnType,
      bool hasIsTest,
      bool hasIsTestGroup,
      bool hasJS,
      bool hasLiteral,
      bool hasMustCallSuper,
      bool hasNonVirtual,
      bool hasOptionalTypeArgs,
      bool hasOverride,
      bool hasProtected,
      bool hasRequired,
      bool hasSealed,
      bool hasVisibleForTemplate,
      bool hasVisibleForTesting,
      bool isPublic});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidDeclarationModifiersCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? ignoredTransforms = freezed,
    Object? ignoredAnalyses = freezed,
    Object? overridenTransforms = freezed,
    Object? isAbstract = freezed,
    Object? isGetter = freezed,
    Object? isOperator = freezed,
    Object? isSetter = freezed,
    Object? isStatic = freezed,
    Object? isSynthetic = freezed,
    Object? isCovariant = freezed,
    Object? isExplicitlyCovariant = freezed,
    Object? hasAlwaysThrows = freezed,
    Object? hasDeprecated = freezed,
    Object? hasFactory = freezed,
    Object? hasImplicitReturnType = freezed,
    Object? hasIsTest = freezed,
    Object? hasIsTestGroup = freezed,
    Object? hasJS = freezed,
    Object? hasLiteral = freezed,
    Object? hasMustCallSuper = freezed,
    Object? hasNonVirtual = freezed,
    Object? hasOptionalTypeArgs = freezed,
    Object? hasOverride = freezed,
    Object? hasProtected = freezed,
    Object? hasRequired = freezed,
    Object? hasSealed = freezed,
    Object? hasVisibleForTemplate = freezed,
    Object? hasVisibleForTesting = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_$Data(
      ignoredTransforms: ignoredTransforms == freezed
          ? _value.ignoredTransforms
          : ignoredTransforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ignoredAnalyses: ignoredAnalyses == freezed
          ? _value.ignoredAnalyses
          : ignoredAnalyses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overridenTransforms: overridenTransforms == freezed
          ? _value.overridenTransforms
          : overridenTransforms // ignore: cast_nullable_to_non_nullable
              as List<StringTuple>,
      isAbstract: isAbstract == freezed
          ? _value.isAbstract
          : isAbstract // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetter: isGetter == freezed
          ? _value.isGetter
          : isGetter // ignore: cast_nullable_to_non_nullable
              as bool,
      isOperator: isOperator == freezed
          ? _value.isOperator
          : isOperator // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetter: isSetter == freezed
          ? _value.isSetter
          : isSetter // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatic: isStatic == freezed
          ? _value.isStatic
          : isStatic // ignore: cast_nullable_to_non_nullable
              as bool,
      isSynthetic: isSynthetic == freezed
          ? _value.isSynthetic
          : isSynthetic // ignore: cast_nullable_to_non_nullable
              as bool,
      isCovariant: isCovariant == freezed
          ? _value.isCovariant
          : isCovariant // ignore: cast_nullable_to_non_nullable
              as bool,
      isExplicitlyCovariant: isExplicitlyCovariant == freezed
          ? _value.isExplicitlyCovariant
          : isExplicitlyCovariant // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAlwaysThrows: hasAlwaysThrows == freezed
          ? _value.hasAlwaysThrows
          : hasAlwaysThrows // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDeprecated: hasDeprecated == freezed
          ? _value.hasDeprecated
          : hasDeprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFactory: hasFactory == freezed
          ? _value.hasFactory
          : hasFactory // ignore: cast_nullable_to_non_nullable
              as bool,
      hasImplicitReturnType: hasImplicitReturnType == freezed
          ? _value.hasImplicitReturnType
          : hasImplicitReturnType // ignore: cast_nullable_to_non_nullable
              as bool,
      hasIsTest: hasIsTest == freezed
          ? _value.hasIsTest
          : hasIsTest // ignore: cast_nullable_to_non_nullable
              as bool,
      hasIsTestGroup: hasIsTestGroup == freezed
          ? _value.hasIsTestGroup
          : hasIsTestGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      hasJS: hasJS == freezed
          ? _value.hasJS
          : hasJS // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLiteral: hasLiteral == freezed
          ? _value.hasLiteral
          : hasLiteral // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMustCallSuper: hasMustCallSuper == freezed
          ? _value.hasMustCallSuper
          : hasMustCallSuper // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNonVirtual: hasNonVirtual == freezed
          ? _value.hasNonVirtual
          : hasNonVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOptionalTypeArgs: hasOptionalTypeArgs == freezed
          ? _value.hasOptionalTypeArgs
          : hasOptionalTypeArgs // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOverride: hasOverride == freezed
          ? _value.hasOverride
          : hasOverride // ignore: cast_nullable_to_non_nullable
              as bool,
      hasProtected: hasProtected == freezed
          ? _value.hasProtected
          : hasProtected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequired: hasRequired == freezed
          ? _value.hasRequired
          : hasRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSealed: hasSealed == freezed
          ? _value.hasSealed
          : hasSealed // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisibleForTemplate: hasVisibleForTemplate == freezed
          ? _value.hasVisibleForTemplate
          : hasVisibleForTemplate // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisibleForTesting: hasVisibleForTesting == freezed
          ? _value.hasVisibleForTesting
          : hasVisibleForTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data(
      {required this.ignoredTransforms,
      required this.ignoredAnalyses,
      required this.overridenTransforms,
      required this.isAbstract,
      required this.isGetter,
      required this.isOperator,
      required this.isSetter,
      required this.isStatic,
      required this.isSynthetic,
      required this.isCovariant,
      required this.isExplicitlyCovariant,
      required this.hasAlwaysThrows,
      required this.hasDeprecated,
      required this.hasFactory,
      required this.hasImplicitReturnType,
      required this.hasIsTest,
      required this.hasIsTestGroup,
      required this.hasJS,
      required this.hasLiteral,
      required this.hasMustCallSuper,
      required this.hasNonVirtual,
      required this.hasOptionalTypeArgs,
      required this.hasOverride,
      required this.hasProtected,
      required this.hasRequired,
      required this.hasSealed,
      required this.hasVisibleForTemplate,
      required this.hasVisibleForTesting,
      required this.isPublic})
      : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final List<String> ignoredTransforms;
  @override
  final List<String> ignoredAnalyses;
  @override
  final List<StringTuple> overridenTransforms;
  @override
  final bool isAbstract;
  @override
  final bool isGetter;
  @override
  final bool isOperator;
  @override
  final bool isSetter;
  @override
  final bool isStatic;
  @override
  final bool isSynthetic;
  @override
  final bool isCovariant;
  @override
  final bool isExplicitlyCovariant;
  @override
  final bool hasAlwaysThrows;
  @override
  final bool hasDeprecated;
  @override
  final bool hasFactory;
  @override
  final bool hasImplicitReturnType;
  @override
  final bool hasIsTest;
  @override
  final bool hasIsTestGroup;
  @override
  final bool hasJS;
  @override
  final bool hasLiteral;
  @override
  final bool hasMustCallSuper;
  @override
  final bool hasNonVirtual;
  @override
  final bool hasOptionalTypeArgs;
  @override
  final bool hasOverride;
  @override
  final bool hasProtected;
  @override
  final bool hasRequired;
  @override
  final bool hasSealed;
  @override
  final bool hasVisibleForTemplate;
  @override
  final bool hasVisibleForTesting;
  @override
  final bool isPublic;

  @override
  String toString() {
    return 'SwidDeclarationModifiers(ignoredTransforms: $ignoredTransforms, ignoredAnalyses: $ignoredAnalyses, overridenTransforms: $overridenTransforms, isAbstract: $isAbstract, isGetter: $isGetter, isOperator: $isOperator, isSetter: $isSetter, isStatic: $isStatic, isSynthetic: $isSynthetic, isCovariant: $isCovariant, isExplicitlyCovariant: $isExplicitlyCovariant, hasAlwaysThrows: $hasAlwaysThrows, hasDeprecated: $hasDeprecated, hasFactory: $hasFactory, hasImplicitReturnType: $hasImplicitReturnType, hasIsTest: $hasIsTest, hasIsTestGroup: $hasIsTestGroup, hasJS: $hasJS, hasLiteral: $hasLiteral, hasMustCallSuper: $hasMustCallSuper, hasNonVirtual: $hasNonVirtual, hasOptionalTypeArgs: $hasOptionalTypeArgs, hasOverride: $hasOverride, hasProtected: $hasProtected, hasRequired: $hasRequired, hasSealed: $hasSealed, hasVisibleForTemplate: $hasVisibleForTemplate, hasVisibleForTesting: $hasVisibleForTesting, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.ignoredTransforms, ignoredTransforms) ||
                const DeepCollectionEquality()
                    .equals(other.ignoredTransforms, ignoredTransforms)) &&
            (identical(other.ignoredAnalyses, ignoredAnalyses) ||
                const DeepCollectionEquality()
                    .equals(other.ignoredAnalyses, ignoredAnalyses)) &&
            (identical(other.overridenTransforms, overridenTransforms) ||
                const DeepCollectionEquality()
                    .equals(other.overridenTransforms, overridenTransforms)) &&
            (identical(other.isAbstract, isAbstract) ||
                const DeepCollectionEquality()
                    .equals(other.isAbstract, isAbstract)) &&
            (identical(other.isGetter, isGetter) ||
                const DeepCollectionEquality()
                    .equals(other.isGetter, isGetter)) &&
            (identical(other.isOperator, isOperator) ||
                const DeepCollectionEquality()
                    .equals(other.isOperator, isOperator)) &&
            (identical(other.isSetter, isSetter) ||
                const DeepCollectionEquality()
                    .equals(other.isSetter, isSetter)) &&
            (identical(other.isStatic, isStatic) ||
                const DeepCollectionEquality()
                    .equals(other.isStatic, isStatic)) &&
            (identical(other.isSynthetic, isSynthetic) ||
                const DeepCollectionEquality()
                    .equals(other.isSynthetic, isSynthetic)) &&
            (identical(other.isCovariant, isCovariant) ||
                const DeepCollectionEquality()
                    .equals(other.isCovariant, isCovariant)) &&
            (identical(other.isExplicitlyCovariant, isExplicitlyCovariant) ||
                const DeepCollectionEquality().equals(
                    other.isExplicitlyCovariant, isExplicitlyCovariant)) &&
            (identical(other.hasAlwaysThrows, hasAlwaysThrows) ||
                const DeepCollectionEquality()
                    .equals(other.hasAlwaysThrows, hasAlwaysThrows)) &&
            (identical(other.hasDeprecated, hasDeprecated) ||
                const DeepCollectionEquality()
                    .equals(other.hasDeprecated, hasDeprecated)) &&
            (identical(other.hasFactory, hasFactory) ||
                const DeepCollectionEquality()
                    .equals(other.hasFactory, hasFactory)) &&
            (identical(other.hasImplicitReturnType, hasImplicitReturnType) ||
                const DeepCollectionEquality().equals(
                    other.hasImplicitReturnType, hasImplicitReturnType)) &&
            (identical(other.hasIsTest, hasIsTest) ||
                const DeepCollectionEquality()
                    .equals(other.hasIsTest, hasIsTest)) &&
            (identical(other.hasIsTestGroup, hasIsTestGroup) ||
                const DeepCollectionEquality()
                    .equals(other.hasIsTestGroup, hasIsTestGroup)) &&
            (identical(other.hasJS, hasJS) ||
                const DeepCollectionEquality().equals(other.hasJS, hasJS)) &&
            (identical(other.hasLiteral, hasLiteral) ||
                const DeepCollectionEquality()
                    .equals(other.hasLiteral, hasLiteral)) &&
            (identical(other.hasMustCallSuper, hasMustCallSuper) ||
                const DeepCollectionEquality()
                    .equals(other.hasMustCallSuper, hasMustCallSuper)) &&
            (identical(other.hasNonVirtual, hasNonVirtual) ||
                const DeepCollectionEquality()
                    .equals(other.hasNonVirtual, hasNonVirtual)) &&
            (identical(other.hasOptionalTypeArgs, hasOptionalTypeArgs) ||
                const DeepCollectionEquality()
                    .equals(other.hasOptionalTypeArgs, hasOptionalTypeArgs)) &&
            (identical(other.hasOverride, hasOverride) || const DeepCollectionEquality().equals(other.hasOverride, hasOverride)) &&
            (identical(other.hasProtected, hasProtected) || const DeepCollectionEquality().equals(other.hasProtected, hasProtected)) &&
            (identical(other.hasRequired, hasRequired) || const DeepCollectionEquality().equals(other.hasRequired, hasRequired)) &&
            (identical(other.hasSealed, hasSealed) || const DeepCollectionEquality().equals(other.hasSealed, hasSealed)) &&
            (identical(other.hasVisibleForTemplate, hasVisibleForTemplate) || const DeepCollectionEquality().equals(other.hasVisibleForTemplate, hasVisibleForTemplate)) &&
            (identical(other.hasVisibleForTesting, hasVisibleForTesting) || const DeepCollectionEquality().equals(other.hasVisibleForTesting, hasVisibleForTesting)) &&
            (identical(other.isPublic, isPublic) || const DeepCollectionEquality().equals(other.isPublic, isPublic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ignoredTransforms) ^
      const DeepCollectionEquality().hash(ignoredAnalyses) ^
      const DeepCollectionEquality().hash(overridenTransforms) ^
      const DeepCollectionEquality().hash(isAbstract) ^
      const DeepCollectionEquality().hash(isGetter) ^
      const DeepCollectionEquality().hash(isOperator) ^
      const DeepCollectionEquality().hash(isSetter) ^
      const DeepCollectionEquality().hash(isStatic) ^
      const DeepCollectionEquality().hash(isSynthetic) ^
      const DeepCollectionEquality().hash(isCovariant) ^
      const DeepCollectionEquality().hash(isExplicitlyCovariant) ^
      const DeepCollectionEquality().hash(hasAlwaysThrows) ^
      const DeepCollectionEquality().hash(hasDeprecated) ^
      const DeepCollectionEquality().hash(hasFactory) ^
      const DeepCollectionEquality().hash(hasImplicitReturnType) ^
      const DeepCollectionEquality().hash(hasIsTest) ^
      const DeepCollectionEquality().hash(hasIsTestGroup) ^
      const DeepCollectionEquality().hash(hasJS) ^
      const DeepCollectionEquality().hash(hasLiteral) ^
      const DeepCollectionEquality().hash(hasMustCallSuper) ^
      const DeepCollectionEquality().hash(hasNonVirtual) ^
      const DeepCollectionEquality().hash(hasOptionalTypeArgs) ^
      const DeepCollectionEquality().hash(hasOverride) ^
      const DeepCollectionEquality().hash(hasProtected) ^
      const DeepCollectionEquality().hash(hasRequired) ^
      const DeepCollectionEquality().hash(hasSealed) ^
      const DeepCollectionEquality().hash(hasVisibleForTemplate) ^
      const DeepCollectionEquality().hash(hasVisibleForTesting) ^
      const DeepCollectionEquality().hash(isPublic);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data extends SwidDeclarationModifiers {
  factory _$Data(
      {required List<String> ignoredTransforms,
      required List<String> ignoredAnalyses,
      required List<StringTuple> overridenTransforms,
      required bool isAbstract,
      required bool isGetter,
      required bool isOperator,
      required bool isSetter,
      required bool isStatic,
      required bool isSynthetic,
      required bool isCovariant,
      required bool isExplicitlyCovariant,
      required bool hasAlwaysThrows,
      required bool hasDeprecated,
      required bool hasFactory,
      required bool hasImplicitReturnType,
      required bool hasIsTest,
      required bool hasIsTestGroup,
      required bool hasJS,
      required bool hasLiteral,
      required bool hasMustCallSuper,
      required bool hasNonVirtual,
      required bool hasOptionalTypeArgs,
      required bool hasOverride,
      required bool hasProtected,
      required bool hasRequired,
      required bool hasSealed,
      required bool hasVisibleForTemplate,
      required bool hasVisibleForTesting,
      required bool isPublic}) = _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  List<String> get ignoredTransforms => throw _privateConstructorUsedError;
  @override
  List<String> get ignoredAnalyses => throw _privateConstructorUsedError;
  @override
  List<StringTuple> get overridenTransforms =>
      throw _privateConstructorUsedError;
  @override
  bool get isAbstract => throw _privateConstructorUsedError;
  @override
  bool get isGetter => throw _privateConstructorUsedError;
  @override
  bool get isOperator => throw _privateConstructorUsedError;
  @override
  bool get isSetter => throw _privateConstructorUsedError;
  @override
  bool get isStatic => throw _privateConstructorUsedError;
  @override
  bool get isSynthetic => throw _privateConstructorUsedError;
  @override
  bool get isCovariant => throw _privateConstructorUsedError;
  @override
  bool get isExplicitlyCovariant => throw _privateConstructorUsedError;
  @override
  bool get hasAlwaysThrows => throw _privateConstructorUsedError;
  @override
  bool get hasDeprecated => throw _privateConstructorUsedError;
  @override
  bool get hasFactory => throw _privateConstructorUsedError;
  @override
  bool get hasImplicitReturnType => throw _privateConstructorUsedError;
  @override
  bool get hasIsTest => throw _privateConstructorUsedError;
  @override
  bool get hasIsTestGroup => throw _privateConstructorUsedError;
  @override
  bool get hasJS => throw _privateConstructorUsedError;
  @override
  bool get hasLiteral => throw _privateConstructorUsedError;
  @override
  bool get hasMustCallSuper => throw _privateConstructorUsedError;
  @override
  bool get hasNonVirtual => throw _privateConstructorUsedError;
  @override
  bool get hasOptionalTypeArgs => throw _privateConstructorUsedError;
  @override
  bool get hasOverride => throw _privateConstructorUsedError;
  @override
  bool get hasProtected => throw _privateConstructorUsedError;
  @override
  bool get hasRequired => throw _privateConstructorUsedError;
  @override
  bool get hasSealed => throw _privateConstructorUsedError;
  @override
  bool get hasVisibleForTemplate => throw _privateConstructorUsedError;
  @override
  bool get hasVisibleForTesting => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
