// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'logEvent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosticLogEvent _$DiagnosticLogEventFromJson(Map<String, dynamic> json) {
  return _$DiagnosticLogEventCtor.fromJson(json);
}

/// @nodoc
class _$DiagnosticLogEventTearOff {
  const _$DiagnosticLogEventTearOff();

  _$DiagnosticLogEventCtor call(
      {required int logEventType, required String message}) {
    return _$DiagnosticLogEventCtor(
      logEventType: logEventType,
      message: message,
    );
  }

  DiagnosticLogEvent fromJson(Map<String, Object> json) {
    return DiagnosticLogEvent.fromJson(json);
  }
}

/// @nodoc
const $DiagnosticLogEvent = _$DiagnosticLogEventTearOff();

/// @nodoc
mixin _$DiagnosticLogEvent {
  int get logEventType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosticLogEventCopyWith<DiagnosticLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticLogEventCopyWith<$Res> {
  factory $DiagnosticLogEventCopyWith(
          DiagnosticLogEvent value, $Res Function(DiagnosticLogEvent) then) =
      _$DiagnosticLogEventCopyWithImpl<$Res>;
  $Res call({int logEventType, String message});
}

/// @nodoc
class _$DiagnosticLogEventCopyWithImpl<$Res>
    implements $DiagnosticLogEventCopyWith<$Res> {
  _$DiagnosticLogEventCopyWithImpl(this._value, this._then);

  final DiagnosticLogEvent _value;
  // ignore: unused_field
  final $Res Function(DiagnosticLogEvent) _then;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DiagnosticLogEventCtorCopyWith<$Res>
    implements $DiagnosticLogEventCopyWith<$Res> {
  factory _$$DiagnosticLogEventCtorCopyWith(_$DiagnosticLogEventCtor value,
          $Res Function(_$DiagnosticLogEventCtor) then) =
      __$$DiagnosticLogEventCtorCopyWithImpl<$Res>;
  @override
  $Res call({int logEventType, String message});
}

/// @nodoc
class __$$DiagnosticLogEventCtorCopyWithImpl<$Res>
    extends _$DiagnosticLogEventCopyWithImpl<$Res>
    implements _$$DiagnosticLogEventCtorCopyWith<$Res> {
  __$$DiagnosticLogEventCtorCopyWithImpl(_$DiagnosticLogEventCtor _value,
      $Res Function(_$DiagnosticLogEventCtor) _then)
      : super(_value, (v) => _then(v as _$DiagnosticLogEventCtor));

  @override
  _$DiagnosticLogEventCtor get _value =>
      super._value as _$DiagnosticLogEventCtor;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DiagnosticLogEventCtor(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$DiagnosticLogEventCtor implements _$DiagnosticLogEventCtor {
  const _$_$DiagnosticLogEventCtor(
      {required this.logEventType, required this.message});

  factory _$_$DiagnosticLogEventCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$DiagnosticLogEventCtorFromJson(json);

  @override
  final int logEventType;
  @override
  final String message;

  @override
  String toString() {
    return 'DiagnosticLogEvent(logEventType: $logEventType, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$DiagnosticLogEventCtor &&
            (identical(other.logEventType, logEventType) ||
                const DeepCollectionEquality()
                    .equals(other.logEventType, logEventType)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEventType) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$$DiagnosticLogEventCtorCopyWith<_$DiagnosticLogEventCtor> get copyWith =>
      __$$DiagnosticLogEventCtorCopyWithImpl<_$DiagnosticLogEventCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DiagnosticLogEventCtorToJson(this);
  }
}

abstract class _$DiagnosticLogEventCtor implements DiagnosticLogEvent {
  const factory _$DiagnosticLogEventCtor(
      {required int logEventType,
      required String message}) = _$_$DiagnosticLogEventCtor;

  factory _$DiagnosticLogEventCtor.fromJson(Map<String, dynamic> json) =
      _$_$DiagnosticLogEventCtor.fromJson;

  @override
  int get logEventType => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosticLogEventCtorCopyWith<_$DiagnosticLogEventCtor> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorLogEvent _$ErrorLogEventFromJson(Map<String, dynamic> json) {
  return _$ErrorLogEventCtor.fromJson(json);
}

/// @nodoc
class _$ErrorLogEventTearOff {
  const _$ErrorLogEventTearOff();

  _$ErrorLogEventCtor call(
      {required int logEventType, required String message}) {
    return _$ErrorLogEventCtor(
      logEventType: logEventType,
      message: message,
    );
  }

  ErrorLogEvent fromJson(Map<String, Object> json) {
    return ErrorLogEvent.fromJson(json);
  }
}

/// @nodoc
const $ErrorLogEvent = _$ErrorLogEventTearOff();

/// @nodoc
mixin _$ErrorLogEvent {
  int get logEventType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorLogEventCopyWith<ErrorLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorLogEventCopyWith<$Res> {
  factory $ErrorLogEventCopyWith(
          ErrorLogEvent value, $Res Function(ErrorLogEvent) then) =
      _$ErrorLogEventCopyWithImpl<$Res>;
  $Res call({int logEventType, String message});
}

/// @nodoc
class _$ErrorLogEventCopyWithImpl<$Res>
    implements $ErrorLogEventCopyWith<$Res> {
  _$ErrorLogEventCopyWithImpl(this._value, this._then);

  final ErrorLogEvent _value;
  // ignore: unused_field
  final $Res Function(ErrorLogEvent) _then;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ErrorLogEventCtorCopyWith<$Res>
    implements $ErrorLogEventCopyWith<$Res> {
  factory _$$ErrorLogEventCtorCopyWith(
          _$ErrorLogEventCtor value, $Res Function(_$ErrorLogEventCtor) then) =
      __$$ErrorLogEventCtorCopyWithImpl<$Res>;
  @override
  $Res call({int logEventType, String message});
}

/// @nodoc
class __$$ErrorLogEventCtorCopyWithImpl<$Res>
    extends _$ErrorLogEventCopyWithImpl<$Res>
    implements _$$ErrorLogEventCtorCopyWith<$Res> {
  __$$ErrorLogEventCtorCopyWithImpl(
      _$ErrorLogEventCtor _value, $Res Function(_$ErrorLogEventCtor) _then)
      : super(_value, (v) => _then(v as _$ErrorLogEventCtor));

  @override
  _$ErrorLogEventCtor get _value => super._value as _$ErrorLogEventCtor;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorLogEventCtor(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ErrorLogEventCtor implements _$ErrorLogEventCtor {
  const _$_$ErrorLogEventCtor(
      {required this.logEventType, required this.message});

  factory _$_$ErrorLogEventCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ErrorLogEventCtorFromJson(json);

  @override
  final int logEventType;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorLogEvent(logEventType: $logEventType, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ErrorLogEventCtor &&
            (identical(other.logEventType, logEventType) ||
                const DeepCollectionEquality()
                    .equals(other.logEventType, logEventType)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEventType) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$$ErrorLogEventCtorCopyWith<_$ErrorLogEventCtor> get copyWith =>
      __$$ErrorLogEventCtorCopyWithImpl<_$ErrorLogEventCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ErrorLogEventCtorToJson(this);
  }
}

abstract class _$ErrorLogEventCtor implements ErrorLogEvent {
  const factory _$ErrorLogEventCtor(
      {required int logEventType,
      required String message}) = _$_$ErrorLogEventCtor;

  factory _$ErrorLogEventCtor.fromJson(Map<String, dynamic> json) =
      _$_$ErrorLogEventCtor.fromJson;

  @override
  int get logEventType => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ErrorLogEventCtorCopyWith<_$ErrorLogEventCtor> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressStartLogEvent _$ProgressStartLogEventFromJson(
    Map<String, dynamic> json) {
  return _$ProgressStartLogEventCtor.fromJson(json);
}

/// @nodoc
class _$ProgressStartLogEventTearOff {
  const _$ProgressStartLogEventTearOff();

  _$ProgressStartLogEventCtor call(
      {required int logEventType, required String progressId}) {
    return _$ProgressStartLogEventCtor(
      logEventType: logEventType,
      progressId: progressId,
    );
  }

  ProgressStartLogEvent fromJson(Map<String, Object> json) {
    return ProgressStartLogEvent.fromJson(json);
  }
}

/// @nodoc
const $ProgressStartLogEvent = _$ProgressStartLogEventTearOff();

/// @nodoc
mixin _$ProgressStartLogEvent {
  int get logEventType => throw _privateConstructorUsedError;
  String get progressId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressStartLogEventCopyWith<ProgressStartLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStartLogEventCopyWith<$Res> {
  factory $ProgressStartLogEventCopyWith(ProgressStartLogEvent value,
          $Res Function(ProgressStartLogEvent) then) =
      _$ProgressStartLogEventCopyWithImpl<$Res>;
  $Res call({int logEventType, String progressId});
}

/// @nodoc
class _$ProgressStartLogEventCopyWithImpl<$Res>
    implements $ProgressStartLogEventCopyWith<$Res> {
  _$ProgressStartLogEventCopyWithImpl(this._value, this._then);

  final ProgressStartLogEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressStartLogEvent) _then;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_value.copyWith(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ProgressStartLogEventCtorCopyWith<$Res>
    implements $ProgressStartLogEventCopyWith<$Res> {
  factory _$$ProgressStartLogEventCtorCopyWith(
          _$ProgressStartLogEventCtor value,
          $Res Function(_$ProgressStartLogEventCtor) then) =
      __$$ProgressStartLogEventCtorCopyWithImpl<$Res>;
  @override
  $Res call({int logEventType, String progressId});
}

/// @nodoc
class __$$ProgressStartLogEventCtorCopyWithImpl<$Res>
    extends _$ProgressStartLogEventCopyWithImpl<$Res>
    implements _$$ProgressStartLogEventCtorCopyWith<$Res> {
  __$$ProgressStartLogEventCtorCopyWithImpl(_$ProgressStartLogEventCtor _value,
      $Res Function(_$ProgressStartLogEventCtor) _then)
      : super(_value, (v) => _then(v as _$ProgressStartLogEventCtor));

  @override
  _$ProgressStartLogEventCtor get _value =>
      super._value as _$ProgressStartLogEventCtor;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_$ProgressStartLogEventCtor(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProgressStartLogEventCtor implements _$ProgressStartLogEventCtor {
  const _$_$ProgressStartLogEventCtor(
      {required this.logEventType, required this.progressId});

  factory _$_$ProgressStartLogEventCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProgressStartLogEventCtorFromJson(json);

  @override
  final int logEventType;
  @override
  final String progressId;

  @override
  String toString() {
    return 'ProgressStartLogEvent(logEventType: $logEventType, progressId: $progressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProgressStartLogEventCtor &&
            (identical(other.logEventType, logEventType) ||
                const DeepCollectionEquality()
                    .equals(other.logEventType, logEventType)) &&
            (identical(other.progressId, progressId) ||
                const DeepCollectionEquality()
                    .equals(other.progressId, progressId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEventType) ^
      const DeepCollectionEquality().hash(progressId);

  @JsonKey(ignore: true)
  @override
  _$$ProgressStartLogEventCtorCopyWith<_$ProgressStartLogEventCtor>
      get copyWith => __$$ProgressStartLogEventCtorCopyWithImpl<
          _$ProgressStartLogEventCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProgressStartLogEventCtorToJson(this);
  }
}

abstract class _$ProgressStartLogEventCtor implements ProgressStartLogEvent {
  const factory _$ProgressStartLogEventCtor(
      {required int logEventType,
      required String progressId}) = _$_$ProgressStartLogEventCtor;

  factory _$ProgressStartLogEventCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProgressStartLogEventCtor.fromJson;

  @override
  int get logEventType => throw _privateConstructorUsedError;
  @override
  String get progressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProgressStartLogEventCtorCopyWith<_$ProgressStartLogEventCtor>
      get copyWith => throw _privateConstructorUsedError;
}

ProgressStopLogEvent _$ProgressStopLogEventFromJson(Map<String, dynamic> json) {
  return _$ProgressStopLogEventCtor.fromJson(json);
}

/// @nodoc
class _$ProgressStopLogEventTearOff {
  const _$ProgressStopLogEventTearOff();

  _$ProgressStopLogEventCtor call(
      {required int logEventType, required String progressId}) {
    return _$ProgressStopLogEventCtor(
      logEventType: logEventType,
      progressId: progressId,
    );
  }

  ProgressStopLogEvent fromJson(Map<String, Object> json) {
    return ProgressStopLogEvent.fromJson(json);
  }
}

/// @nodoc
const $ProgressStopLogEvent = _$ProgressStopLogEventTearOff();

/// @nodoc
mixin _$ProgressStopLogEvent {
  int get logEventType => throw _privateConstructorUsedError;
  String get progressId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressStopLogEventCopyWith<ProgressStopLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStopLogEventCopyWith<$Res> {
  factory $ProgressStopLogEventCopyWith(ProgressStopLogEvent value,
          $Res Function(ProgressStopLogEvent) then) =
      _$ProgressStopLogEventCopyWithImpl<$Res>;
  $Res call({int logEventType, String progressId});
}

/// @nodoc
class _$ProgressStopLogEventCopyWithImpl<$Res>
    implements $ProgressStopLogEventCopyWith<$Res> {
  _$ProgressStopLogEventCopyWithImpl(this._value, this._then);

  final ProgressStopLogEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressStopLogEvent) _then;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_value.copyWith(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ProgressStopLogEventCtorCopyWith<$Res>
    implements $ProgressStopLogEventCopyWith<$Res> {
  factory _$$ProgressStopLogEventCtorCopyWith(_$ProgressStopLogEventCtor value,
          $Res Function(_$ProgressStopLogEventCtor) then) =
      __$$ProgressStopLogEventCtorCopyWithImpl<$Res>;
  @override
  $Res call({int logEventType, String progressId});
}

/// @nodoc
class __$$ProgressStopLogEventCtorCopyWithImpl<$Res>
    extends _$ProgressStopLogEventCopyWithImpl<$Res>
    implements _$$ProgressStopLogEventCtorCopyWith<$Res> {
  __$$ProgressStopLogEventCtorCopyWithImpl(_$ProgressStopLogEventCtor _value,
      $Res Function(_$ProgressStopLogEventCtor) _then)
      : super(_value, (v) => _then(v as _$ProgressStopLogEventCtor));

  @override
  _$ProgressStopLogEventCtor get _value =>
      super._value as _$ProgressStopLogEventCtor;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_$ProgressStopLogEventCtor(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProgressStopLogEventCtor implements _$ProgressStopLogEventCtor {
  const _$_$ProgressStopLogEventCtor(
      {required this.logEventType, required this.progressId});

  factory _$_$ProgressStopLogEventCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProgressStopLogEventCtorFromJson(json);

  @override
  final int logEventType;
  @override
  final String progressId;

  @override
  String toString() {
    return 'ProgressStopLogEvent(logEventType: $logEventType, progressId: $progressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProgressStopLogEventCtor &&
            (identical(other.logEventType, logEventType) ||
                const DeepCollectionEquality()
                    .equals(other.logEventType, logEventType)) &&
            (identical(other.progressId, progressId) ||
                const DeepCollectionEquality()
                    .equals(other.progressId, progressId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEventType) ^
      const DeepCollectionEquality().hash(progressId);

  @JsonKey(ignore: true)
  @override
  _$$ProgressStopLogEventCtorCopyWith<_$ProgressStopLogEventCtor>
      get copyWith =>
          __$$ProgressStopLogEventCtorCopyWithImpl<_$ProgressStopLogEventCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProgressStopLogEventCtorToJson(this);
  }
}

abstract class _$ProgressStopLogEventCtor implements ProgressStopLogEvent {
  const factory _$ProgressStopLogEventCtor(
      {required int logEventType,
      required String progressId}) = _$_$ProgressStopLogEventCtor;

  factory _$ProgressStopLogEventCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProgressStopLogEventCtor.fromJson;

  @override
  int get logEventType => throw _privateConstructorUsedError;
  @override
  String get progressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProgressStopLogEventCtorCopyWith<_$ProgressStopLogEventCtor>
      get copyWith => throw _privateConstructorUsedError;
}

ProgressTickLogEvent _$ProgressTickLogEventFromJson(Map<String, dynamic> json) {
  return _$ProgressTickLogEventCtor.fromJson(json);
}

/// @nodoc
class _$ProgressTickLogEventTearOff {
  const _$ProgressTickLogEventTearOff();

  _$ProgressTickLogEventCtor call(
      {required int logEventType,
      required int currentStep,
      required int totalSteps,
      required String suffixMessage,
      required String progressId}) {
    return _$ProgressTickLogEventCtor(
      logEventType: logEventType,
      currentStep: currentStep,
      totalSteps: totalSteps,
      suffixMessage: suffixMessage,
      progressId: progressId,
    );
  }

  ProgressTickLogEvent fromJson(Map<String, Object> json) {
    return ProgressTickLogEvent.fromJson(json);
  }
}

/// @nodoc
const $ProgressTickLogEvent = _$ProgressTickLogEventTearOff();

/// @nodoc
mixin _$ProgressTickLogEvent {
  int get logEventType => throw _privateConstructorUsedError;
  int get currentStep => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  String get suffixMessage => throw _privateConstructorUsedError;
  String get progressId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressTickLogEventCopyWith<ProgressTickLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressTickLogEventCopyWith<$Res> {
  factory $ProgressTickLogEventCopyWith(ProgressTickLogEvent value,
          $Res Function(ProgressTickLogEvent) then) =
      _$ProgressTickLogEventCopyWithImpl<$Res>;
  $Res call(
      {int logEventType,
      int currentStep,
      int totalSteps,
      String suffixMessage,
      String progressId});
}

/// @nodoc
class _$ProgressTickLogEventCopyWithImpl<$Res>
    implements $ProgressTickLogEventCopyWith<$Res> {
  _$ProgressTickLogEventCopyWithImpl(this._value, this._then);

  final ProgressTickLogEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressTickLogEvent) _then;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? currentStep = freezed,
    Object? totalSteps = freezed,
    Object? suffixMessage = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_value.copyWith(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: totalSteps == freezed
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      suffixMessage: suffixMessage == freezed
          ? _value.suffixMessage
          : suffixMessage // ignore: cast_nullable_to_non_nullable
              as String,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ProgressTickLogEventCtorCopyWith<$Res>
    implements $ProgressTickLogEventCopyWith<$Res> {
  factory _$$ProgressTickLogEventCtorCopyWith(_$ProgressTickLogEventCtor value,
          $Res Function(_$ProgressTickLogEventCtor) then) =
      __$$ProgressTickLogEventCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int logEventType,
      int currentStep,
      int totalSteps,
      String suffixMessage,
      String progressId});
}

/// @nodoc
class __$$ProgressTickLogEventCtorCopyWithImpl<$Res>
    extends _$ProgressTickLogEventCopyWithImpl<$Res>
    implements _$$ProgressTickLogEventCtorCopyWith<$Res> {
  __$$ProgressTickLogEventCtorCopyWithImpl(_$ProgressTickLogEventCtor _value,
      $Res Function(_$ProgressTickLogEventCtor) _then)
      : super(_value, (v) => _then(v as _$ProgressTickLogEventCtor));

  @override
  _$ProgressTickLogEventCtor get _value =>
      super._value as _$ProgressTickLogEventCtor;

  @override
  $Res call({
    Object? logEventType = freezed,
    Object? currentStep = freezed,
    Object? totalSteps = freezed,
    Object? suffixMessage = freezed,
    Object? progressId = freezed,
  }) {
    return _then(_$ProgressTickLogEventCtor(
      logEventType: logEventType == freezed
          ? _value.logEventType
          : logEventType // ignore: cast_nullable_to_non_nullable
              as int,
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: totalSteps == freezed
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      suffixMessage: suffixMessage == freezed
          ? _value.suffixMessage
          : suffixMessage // ignore: cast_nullable_to_non_nullable
              as String,
      progressId: progressId == freezed
          ? _value.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProgressTickLogEventCtor implements _$ProgressTickLogEventCtor {
  const _$_$ProgressTickLogEventCtor(
      {required this.logEventType,
      required this.currentStep,
      required this.totalSteps,
      required this.suffixMessage,
      required this.progressId});

  factory _$_$ProgressTickLogEventCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProgressTickLogEventCtorFromJson(json);

  @override
  final int logEventType;
  @override
  final int currentStep;
  @override
  final int totalSteps;
  @override
  final String suffixMessage;
  @override
  final String progressId;

  @override
  String toString() {
    return 'ProgressTickLogEvent(logEventType: $logEventType, currentStep: $currentStep, totalSteps: $totalSteps, suffixMessage: $suffixMessage, progressId: $progressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProgressTickLogEventCtor &&
            (identical(other.logEventType, logEventType) ||
                const DeepCollectionEquality()
                    .equals(other.logEventType, logEventType)) &&
            (identical(other.currentStep, currentStep) ||
                const DeepCollectionEquality()
                    .equals(other.currentStep, currentStep)) &&
            (identical(other.totalSteps, totalSteps) ||
                const DeepCollectionEquality()
                    .equals(other.totalSteps, totalSteps)) &&
            (identical(other.suffixMessage, suffixMessage) ||
                const DeepCollectionEquality()
                    .equals(other.suffixMessage, suffixMessage)) &&
            (identical(other.progressId, progressId) ||
                const DeepCollectionEquality()
                    .equals(other.progressId, progressId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logEventType) ^
      const DeepCollectionEquality().hash(currentStep) ^
      const DeepCollectionEquality().hash(totalSteps) ^
      const DeepCollectionEquality().hash(suffixMessage) ^
      const DeepCollectionEquality().hash(progressId);

  @JsonKey(ignore: true)
  @override
  _$$ProgressTickLogEventCtorCopyWith<_$ProgressTickLogEventCtor>
      get copyWith =>
          __$$ProgressTickLogEventCtorCopyWithImpl<_$ProgressTickLogEventCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProgressTickLogEventCtorToJson(this);
  }
}

abstract class _$ProgressTickLogEventCtor implements ProgressTickLogEvent {
  const factory _$ProgressTickLogEventCtor(
      {required int logEventType,
      required int currentStep,
      required int totalSteps,
      required String suffixMessage,
      required String progressId}) = _$_$ProgressTickLogEventCtor;

  factory _$ProgressTickLogEventCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProgressTickLogEventCtor.fromJson;

  @override
  int get logEventType => throw _privateConstructorUsedError;
  @override
  int get currentStep => throw _privateConstructorUsedError;
  @override
  int get totalSteps => throw _privateConstructorUsedError;
  @override
  String get suffixMessage => throw _privateConstructorUsedError;
  @override
  String get progressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProgressTickLogEventCtorCopyWith<_$ProgressTickLogEventCtor>
      get copyWith => throw _privateConstructorUsedError;
}
