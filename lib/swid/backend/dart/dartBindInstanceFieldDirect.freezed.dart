// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dartBindInstanceFieldDirect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartBindInstanceFieldDirectTearOff {
  const _$DartBindInstanceFieldDirectTearOff();

  _$DartBindInstanceFieldDirectCtor call(
      {required String instanceFieldName, required String tableKey}) {
    return _$DartBindInstanceFieldDirectCtor(
      instanceFieldName: instanceFieldName,
      tableKey: tableKey,
    );
  }
}

/// @nodoc
const $DartBindInstanceFieldDirect = _$DartBindInstanceFieldDirectTearOff();

/// @nodoc
mixin _$DartBindInstanceFieldDirect {
  String get instanceFieldName => throw _privateConstructorUsedError;
  String get tableKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBindInstanceFieldDirectCopyWith<DartBindInstanceFieldDirect>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBindInstanceFieldDirectCopyWith<$Res> {
  factory $DartBindInstanceFieldDirectCopyWith(
          DartBindInstanceFieldDirect value,
          $Res Function(DartBindInstanceFieldDirect) then) =
      _$DartBindInstanceFieldDirectCopyWithImpl<$Res>;
  $Res call({String instanceFieldName, String tableKey});
}

/// @nodoc
class _$DartBindInstanceFieldDirectCopyWithImpl<$Res>
    implements $DartBindInstanceFieldDirectCopyWith<$Res> {
  _$DartBindInstanceFieldDirectCopyWithImpl(this._value, this._then);

  final DartBindInstanceFieldDirect _value;
  // ignore: unused_field
  final $Res Function(DartBindInstanceFieldDirect) _then;

  @override
  $Res call({
    Object? instanceFieldName = freezed,
    Object? tableKey = freezed,
  }) {
    return _then(_value.copyWith(
      instanceFieldName: instanceFieldName == freezed
          ? _value.instanceFieldName
          : instanceFieldName // ignore: cast_nullable_to_non_nullable
              as String,
      tableKey: tableKey == freezed
          ? _value.tableKey
          : tableKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DartBindInstanceFieldDirectCtorCopyWith<$Res>
    implements $DartBindInstanceFieldDirectCopyWith<$Res> {
  factory _$$DartBindInstanceFieldDirectCtorCopyWith(
          _$DartBindInstanceFieldDirectCtor value,
          $Res Function(_$DartBindInstanceFieldDirectCtor) then) =
      __$$DartBindInstanceFieldDirectCtorCopyWithImpl<$Res>;
  @override
  $Res call({String instanceFieldName, String tableKey});
}

/// @nodoc
class __$$DartBindInstanceFieldDirectCtorCopyWithImpl<$Res>
    extends _$DartBindInstanceFieldDirectCopyWithImpl<$Res>
    implements _$$DartBindInstanceFieldDirectCtorCopyWith<$Res> {
  __$$DartBindInstanceFieldDirectCtorCopyWithImpl(
      _$DartBindInstanceFieldDirectCtor _value,
      $Res Function(_$DartBindInstanceFieldDirectCtor) _then)
      : super(_value, (v) => _then(v as _$DartBindInstanceFieldDirectCtor));

  @override
  _$DartBindInstanceFieldDirectCtor get _value =>
      super._value as _$DartBindInstanceFieldDirectCtor;

  @override
  $Res call({
    Object? instanceFieldName = freezed,
    Object? tableKey = freezed,
  }) {
    return _then(_$DartBindInstanceFieldDirectCtor(
      instanceFieldName: instanceFieldName == freezed
          ? _value.instanceFieldName
          : instanceFieldName // ignore: cast_nullable_to_non_nullable
              as String,
      tableKey: tableKey == freezed
          ? _value.tableKey
          : tableKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$DartBindInstanceFieldDirectCtor
    extends _$DartBindInstanceFieldDirectCtor {
  _$_$DartBindInstanceFieldDirectCtor(
      {required this.instanceFieldName, required this.tableKey})
      : super._();

  @override
  final String instanceFieldName;
  @override
  final String tableKey;

  @override
  String toString() {
    return 'DartBindInstanceFieldDirect(instanceFieldName: $instanceFieldName, tableKey: $tableKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$DartBindInstanceFieldDirectCtor &&
            (identical(other.instanceFieldName, instanceFieldName) ||
                const DeepCollectionEquality()
                    .equals(other.instanceFieldName, instanceFieldName)) &&
            (identical(other.tableKey, tableKey) ||
                const DeepCollectionEquality()
                    .equals(other.tableKey, tableKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(instanceFieldName) ^
      const DeepCollectionEquality().hash(tableKey);

  @JsonKey(ignore: true)
  @override
  _$$DartBindInstanceFieldDirectCtorCopyWith<_$DartBindInstanceFieldDirectCtor>
      get copyWith => __$$DartBindInstanceFieldDirectCtorCopyWithImpl<
          _$DartBindInstanceFieldDirectCtor>(this, _$identity);
}

abstract class _$DartBindInstanceFieldDirectCtor
    extends DartBindInstanceFieldDirect {
  factory _$DartBindInstanceFieldDirectCtor(
      {required String instanceFieldName,
      required String tableKey}) = _$_$DartBindInstanceFieldDirectCtor;
  _$DartBindInstanceFieldDirectCtor._() : super._();

  @override
  String get instanceFieldName => throw _privateConstructorUsedError;
  @override
  String get tableKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DartBindInstanceFieldDirectCtorCopyWith<_$DartBindInstanceFieldDirectCtor>
      get copyWith => throw _privateConstructorUsedError;
}
