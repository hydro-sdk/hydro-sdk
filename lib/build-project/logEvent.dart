import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'logEvent.freezed.dart';
part 'logEvent.g.dart';

@freezed
abstract class DiagnosticLogEvent with _$DiagnosticLogEvent {
  const factory DiagnosticLogEvent({
    required int logEventType,
    required String message,
  }) = _$DiagnosticLogEventCtor;

  factory DiagnosticLogEvent.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticLogEventFromJson(json);
}

@freezed
abstract class ErrorLogEvent with _$ErrorLogEvent {
  const factory ErrorLogEvent({
    required int logEventType,
    required String message,
  }) = _$ErrorLogEventCtor;

  factory ErrorLogEvent.fromJson(Map<String, dynamic> json) =>
      _$ErrorLogEventFromJson(json);
}

@freezed
abstract class ProgressStartLogEvent with _$ProgressStartLogEvent {
  const factory ProgressStartLogEvent({
    required int logEventType,
    required String progressId,
  }) = _$ProgressStartLogEventCtor;

  factory ProgressStartLogEvent.fromJson(Map<String, dynamic> json) =>
      _$ProgressStartLogEventFromJson(json);
}

@freezed
abstract class ProgressStopLogEvent with _$ProgressStopLogEvent {
  const factory ProgressStopLogEvent({
    required int logEventType,
    required String progressId,
  }) = _$ProgressStopLogEventCtor;

  factory ProgressStopLogEvent.fromJson(Map<String, dynamic> json) =>
      _$ProgressStopLogEventFromJson(json);
}

@freezed
abstract class ProgressTickLogEvent with _$ProgressTickLogEvent {
  const factory ProgressTickLogEvent({
    required int logEventType,
    required int currentStep,
    required int totalSteps,
    required String suffixMessage,
    required String progressId,
  }) = _$ProgressTickLogEventCtor;

  factory ProgressTickLogEvent.fromJson(Map<String, dynamic> json) =>
      _$ProgressTickLogEventFromJson(json);
}
