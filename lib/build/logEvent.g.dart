// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$DiagnosticLogEventCtor _$_$_$DiagnosticLogEventCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$DiagnosticLogEventCtor(
    logEventType: json['logEventType'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$DiagnosticLogEventCtorToJson(
        _$_$DiagnosticLogEventCtor instance) =>
    <String, dynamic>{
      'logEventType': instance.logEventType,
      'message': instance.message,
    };

_$_$ErrorLogEventCtor _$_$_$ErrorLogEventCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ErrorLogEventCtor(
    logEventType: json['logEventType'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$ErrorLogEventCtorToJson(
        _$_$ErrorLogEventCtor instance) =>
    <String, dynamic>{
      'logEventType': instance.logEventType,
      'message': instance.message,
    };

_$_$ProgressStartLogEventCtor _$_$_$ProgressStartLogEventCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProgressStartLogEventCtor(
    logEventType: json['logEventType'] as int,
    progressId: json['progressId'] as String,
  );
}

Map<String, dynamic> _$_$_$ProgressStartLogEventCtorToJson(
        _$_$ProgressStartLogEventCtor instance) =>
    <String, dynamic>{
      'logEventType': instance.logEventType,
      'progressId': instance.progressId,
    };

_$_$ProgressStopLogEventCtor _$_$_$ProgressStopLogEventCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProgressStopLogEventCtor(
    logEventType: json['logEventType'] as int,
    progressId: json['progressId'] as String,
  );
}

Map<String, dynamic> _$_$_$ProgressStopLogEventCtorToJson(
        _$_$ProgressStopLogEventCtor instance) =>
    <String, dynamic>{
      'logEventType': instance.logEventType,
      'progressId': instance.progressId,
    };

_$_$ProgressTickLogEventCtor _$_$_$ProgressTickLogEventCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProgressTickLogEventCtor(
    logEventType: json['logEventType'] as int,
    currentStep: json['currentStep'] as int,
    totalSteps: json['totalSteps'] as int,
    suffixMessage: json['suffixMessage'] as String,
    progressId: json['progressId'] as String,
  );
}

Map<String, dynamic> _$_$_$ProgressTickLogEventCtorToJson(
        _$_$ProgressTickLogEventCtor instance) =>
    <String, dynamic>{
      'logEventType': instance.logEventType,
      'currentStep': instance.currentStep,
      'totalSteps': instance.totalSteps,
      'suffixMessage': instance.suffixMessage,
      'progressId': instance.progressId,
    };
