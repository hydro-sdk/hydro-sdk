import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBound.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBound
    with
        _$InstantiateTypeArgumentsToLowestBound,
        HashKeyMixin<InstantiateTypeArgumentsToLowestBound>,
        HashComparableMixin<InstantiateTypeArgumentsToLowestBound>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBound,
            $InstantiateTypeArgumentsToLowestBoundCopyWith<
                InstantiateTypeArgumentsToLowestBound>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateTypeArgumentsToLowestBound._();

  factory InstantiateTypeArgumentsToLowestBound({
    required final SwidType swidType,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBound";

  @override
  late final List<int> hashableParts = [
    ...swidType.hashKey.hashableParts,
    ...?swidTypeFormals?.hashableParts,
  ];

  @override
  InstantiateTypeArgumentsToLowestBound clone({
    final SwidType? swidType,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBound(
        swidType: swidType ?? this.swidType,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: fromSwidInterface,
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInClass(
                swidClass: val,
                swidTypeFormals: swidTypeFormals,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: fromSwidDefaultFormalParameter,
          fromSwidFunctionType: fromSwidFunctionType,
        ),
      );
}
