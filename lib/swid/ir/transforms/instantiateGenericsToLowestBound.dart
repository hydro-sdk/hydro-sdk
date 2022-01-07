import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInInterface.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeFormalToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
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
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateGenericsToLowestBound._();

  factory InstantiateGenericsToLowestBound({
    required final SwidType swidType,
  }) = _$InstantiateGenericsToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateGenericsToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  InstantiateGenericsToLowestBound clone({
    final SwidType? swidType,
  }) =>
      InstantiateGenericsToLowestBound(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInInterface(
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
