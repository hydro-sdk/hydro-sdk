import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/mergeClassDeclarations.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'applyInterfaces.freezed.dart';

@freezed
class ApplyInterfaces
    with
        _$ApplyInterfaces,
        HashKeyMixin<ApplyInterfaces>,
        HashComparableMixin<ApplyInterfaces>,
        SwarsTransformMixin<ApplyInterfaces,
            $ApplyInterfacesCopyWith<ApplyInterfaces>, SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  ApplyInterfaces._();

  factory ApplyInterfaces({
    required final SwidClass swidClass,
  }) = _$ApplyInterfacesCtor;

  @override
  String get cacheGroup => "applyInterfaces";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  ApplyInterfaces clone({
    final SwidClass? swidClass,
  }) =>
      ApplyInterfaces(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidClass.implementedClasses.isNotEmpty
            ? swidClass.implementedClasses.fold<SwidClass>(
                swidClass,
                (previousValue, element) => pipeline.reduceFromTerm(
                  MergeClassDeclarations(
                    swidClass: previousValue,
                    superClass: element,
                  ),
                ),
              )
            : swidClass,
      );
}
