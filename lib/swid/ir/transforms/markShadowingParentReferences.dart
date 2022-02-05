import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInClass.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferences.freezed.dart';

@freezed
class MarkShadowingParentReferences
    with
        _$MarkShadowingParentReferences,
        HashKeyMixin<MarkShadowingParentReferences>,
        HashComparableMixin<MarkShadowingParentReferences>,
        SwarsTransformMixin<
            MarkShadowingParentReferences,
            $MarkShadowingParentReferencesCopyWith<
                MarkShadowingParentReferences>,
            SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  MarkShadowingParentReferences._();

  factory MarkShadowingParentReferences({
    required final SwidType swidType,
  }) = _$MarkShadowingParentReferencesCtor;

  @override
  String get cacheGroup => "markShadowingParentReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferences clone({
    final SwidType? swidType,
  }) =>
      MarkShadowingParentReferences(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: val,
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInClass(
                parent: val,
                swidClass: val,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: val,
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: val,
          ),
        ),
      );
}
