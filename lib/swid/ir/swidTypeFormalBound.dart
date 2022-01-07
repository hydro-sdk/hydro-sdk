import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidTypeFormalBound.freezed.dart';
part 'swidTypeFormalBound.g.dart';

@freezed
class SwidTypeFormalBound
    with
        _$SwidTypeFormalBound,
        SwidTypeMixin<SwidTypeFormalBound>,
        HashKeyMixin<SwidTypeFormalBound>,
        HashComparableMixin<SwidTypeFormalBound> {
  SwidTypeFormalBound._();

  factory SwidTypeFormalBound.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$SwidTypeFormalBoundFromSwidInterface;

  factory SwidTypeFormalBound.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$SwidTypeFormalBoundFromSwidFunctionType;

  factory SwidTypeFormalBound.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalBoundFromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = when(
    fromSwidInterface: (val) => val.hashKey.hashableParts,
    fromSwidFunctionType: (val) => val.hashKey.hashableParts,
  );

  @override
  SwidTypeFormalBound clone() => when(
        fromSwidInterface: (val) => SwidTypeFormalBound.fromSwidInterface(
          swidInterface: val.clone(),
        ),
        fromSwidFunctionType: (val) => SwidTypeFormalBound.fromSwidFunctionType(
          swidFunctionType: val.clone(),
        ),
      );

  @override
  SwidDeclarationModifiers get declarationModifiers => when(
        fromSwidInterface: (val) => val.declarationModifiers,
        fromSwidFunctionType: (val) => val.declarationModifiers,
      );

  @override
  SwidNullabilitySuffix get nullabilitySuffix => when(
      fromSwidInterface: (val) => val.nullabilitySuffix,
      fromSwidFunctionType: (val) => val.nullabilitySuffix);

  @override
  String get name => when(
        fromSwidInterface: (val) => val.name,
        fromSwidFunctionType: (val) => val.name,
      );

  @override
  String get originalPackagePath => when(
        fromSwidInterface: (val) => val.originalPackagePath,
        fromSwidFunctionType: (val) => val.originalPackagePath,
      );

  @override
  SwidType? get element => when(
        fromSwidInterface: (val) => val.element,
        fromSwidFunctionType: (val) => val.element,
      );
}
