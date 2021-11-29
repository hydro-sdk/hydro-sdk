import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
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
          required final Iterable<SwidTypeFormal> mergedTypeFormals,
        }) =>
            swidClass.clone())(
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
