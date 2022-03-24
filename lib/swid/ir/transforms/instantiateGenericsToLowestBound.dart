import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInInterface.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeFormalToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateGenericsToLowestBound.freezed.dart';

@freezed
class InstantiateGenericsToLowestBound
    with
        _$InstantiateGenericsToLowestBound,
        HashKeyMixin<InstantiateGenericsToLowestBound>,
        HashComparableMixin<InstantiateGenericsToLowestBound>,
        SwarsTransformMixin<
            InstantiateGenericsToLowestBound,
            $InstantiateGenericsToLowestBoundCopyWith<
                InstantiateGenericsToLowestBound>,
            SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateGenericsToLowestBound._();

  factory InstantiateGenericsToLowestBound({
    required final SwidType swidType,
    required final List<SwidOriginatedAncestorTypeFormal> swidTypeFormals,
  }) = _$InstantiateGenericsToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateGenericsToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield* swidTypeFormals.hashableParts;
  }

  @override
  InstantiateGenericsToLowestBound clone({
    final SwidType? swidType,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateGenericsToLowestBound(
        swidType: swidType ?? this.swidType,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInInterface(
                swidTypeFormals: swidTypeFormals,
                swidInterface: val,
              ),
            ),
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline
                .reduceFromTerm(
                  InstantiateTypeArgumentsToLowestBoundInClass(
                    swidClass: val,
                  ),
                )
                .clone(
                  typeFormals: val.typeFormals
                      .map(
                        (x) => pipeline.reduceFromTerm(
                          InstantiateTypeFormalToLowestBound(
                            swidTypeFormals: swidTypeFormals,
                            swidTypeFormal: x,
                          ),
                        ),
                      )
                      .toList(),
                ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter(
                swidTypeFormals: swidTypeFormals,
                swidDefaultFormalParameter: val,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInFunction(
                swidFunctionType: val,
              ),
            ),
          ),
        ),
      );
}
