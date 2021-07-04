import 'package:analyzer/dart/ast/ast.dart' show Expression;
import 'package:analyzer/dart/element/element.dart' show Element;
import 'package:analyzer/dart/element/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:analyzer/src/dart/element/element.dart'
    show DefaultFieldFormalParameterElementImpl, DefaultParameterElementImpl;

part 'dartDefaultFieldFormalOrDefaultFormal.freezed.dart';

@freezed
class DartDefaultFieldFormalOrDefaultFormal
    with _$DartDefaultFieldFormalOrDefaultFormal {
  const DartDefaultFieldFormalOrDefaultFormal._();

  const factory DartDefaultFieldFormalOrDefaultFormal.fromDefaultFieldFormalParameterElementImpl({
    required DefaultFieldFormalParameterElementImpl
        defaultFieldFormalParameterElementImpl,
  }) =
      _$DartDefaultFieldFormalOrDefaultFormalFromDefaultFieldFormalParameterElementImpl;

  const factory DartDefaultFieldFormalOrDefaultFormal.fromDefaultParameterElementImpl({
    required DefaultParameterElementImpl defaultParameterElementImpl,
  }) = _$DartDefaultFieldFormalOrDefaultFormalFromDefaultParameterElementImpl;

  String get defaultValueCode => when(
        fromDefaultFieldFormalParameterElementImpl: (val) =>
            val.defaultValueCode ?? "",
        fromDefaultParameterElementImpl: (val) => val.defaultValueCode ?? "",
      );

  Expression? get constantInitializer => when(
        fromDefaultFieldFormalParameterElementImpl: (val) =>
            val.constantInitializer,
        fromDefaultParameterElementImpl: (val) => val.constantInitializer,
      );

  String get displayName => when(
        fromDefaultFieldFormalParameterElementImpl: (val) => val.displayName,
        fromDefaultParameterElementImpl: (val) => val.displayName,
      );

  Element get asElement => when(
        fromDefaultFieldFormalParameterElementImpl: (val) => val,
        fromDefaultParameterElementImpl: (val) => val,
      );

  DartType get type => when(
        fromDefaultFieldFormalParameterElementImpl: (val) => val.type,
        fromDefaultParameterElementImpl: (val) => val.type,
      );
}
