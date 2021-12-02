import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInFunction.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBoundInClass.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBoundInClass
    with
        _$InstantiateTypeArgumentsToLowestBoundInClass,
        HashKeyMixin<InstantiateTypeArgumentsToLowestBoundInClass>,
        HashComparableMixin<InstantiateTypeArgumentsToLowestBoundInClass>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBoundInClass,
            $InstantiateTypeArgumentsToLowestBoundInClassCopyWith<
                InstantiateTypeArgumentsToLowestBoundInClass>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  InstantiateTypeArgumentsToLowestBoundInClass._();

  factory InstantiateTypeArgumentsToLowestBoundInClass({
    required final SwidClass swidClass,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInClassCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBoundInClass";

  @override
  late final List<int> hashableParts = [
    ...swidClass.hashKey.hashableParts,
    ...?swidTypeFormals?.hashableParts,
  ];

  @override
  InstantiateTypeArgumentsToLowestBoundInClass clone({
    final SwidClass? swidClass,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBoundInClass(
        swidClass: swidClass ?? this.swidClass,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        (({
          required final List<SwidTypeFormal> mergedTypeFormals,
        }) =>
            swidClass.clone(
              constructorType: swidClass.constructorType != null
                  ? pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInFunction(
                        swidFunctionType: swidClass.constructorType!,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    )
                  : null,
              generativeConstructors: swidClass.generativeConstructors
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInFunction(
                        swidFunctionType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              factoryConstructors: swidClass.factoryConstructors
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInFunction(
                        swidFunctionType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              staticMethods: swidClass.staticMethods
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInFunction(
                        swidFunctionType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              methods: swidClass.methods
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInFunction(
                        swidFunctionType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              instanceFieldDeclarations: Map.fromEntries(
                swidClass.instanceFieldDeclarations.entries.map(
                  (x) => MapEntry(
                    x.key,
                    pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBound(
                        swidType: x.value,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  ),
                ),
              ),
            ))(
          mergedTypeFormals: [
            ...swidClass.typeFormals,
            ...?swidTypeFormals?.where(
              (x) =>
                  swidClass.typeFormals.firstWhereOrNull(
                    (k) => x.value.displayName == k.value.displayName,
                  ) ==
                  null,
            )
          ],
        ),
      );
}
