import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferencesInType.freezed.dart';

@freezed
class MarkShadowingParentReferencesInType
    with
        _$MarkShadowingParentReferencesInType,
        HashKeyMixin<MarkShadowingParentReferencesInType>,
        HashComparableMixin<MarkShadowingParentReferencesInType>,
        SwarsTransformMixin<
            MarkShadowingParentReferencesInType,
            $MarkShadowingParentReferencesInTypeCopyWith<
                MarkShadowingParentReferencesInType>,
            SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  MarkShadowingParentReferencesInType._();

  factory MarkShadowingParentReferencesInType({
    required final SwidClass parent,
    required final SwidType swidType,
  }) = _$MarkShadowingParentReferencesInTypeCtor;

  @override
  String get cacheGroup => "markShadowingParentReferencesInType";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* swidType.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferencesInType clone({
    final SwidClass? parent,
    final SwidType? swidType,
  }) =>
      MarkShadowingParentReferencesInType(
        parent: parent ?? this.parent,
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInInterface(
                parent: parent,
                swidInterface: val,
              ),
            ),
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInClass(
                parent: parent,
                swidClass: val,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInDefaultFormalParameter(
                parent: parent,
                swidDefaultFormalParameter: val,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInFunction(
                parent: parent,
                swidFunctionType: val,
              ),
            ),
          ),
        ),
      );
}
