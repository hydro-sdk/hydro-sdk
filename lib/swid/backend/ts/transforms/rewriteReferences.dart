import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInClass.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInFunction.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'rewriteReferences.freezed.dart';

@freezed
class RewriteReferences
    with
        _$RewriteReferences,
        HashKeyMixin<RewriteReferences>,
        HashComparableMixin,
        SwarsTransformMixin<RewriteReferences,
            $RewriteReferencesCopyWith<RewriteReferences>, SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  RewriteReferences._();

  factory RewriteReferences({
    required final SwidType swidType,
  }) = _$RewriteReferencesCtor;

  @override
  String get cacheGroup => "rewriteReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  RewriteReferences clone({
    final SwidType? swidType,
  }) =>
      RewriteReferences(
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
            RewriteReferencesInInterface(
              swidInterface: val,
            ),
          )),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              RewriteReferencesInClass(
                swidClass: val,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              RewriteReferencesInDefaultFormalParameter(
                swidDefaultFormalParameter: val,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              RewriteReferencesInFunction(
                swidFunctionType: val,
              ),
            ),
          ),
        ),
      );
}
