import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/isShadowingParentReference.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidInterfaceElement.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferencesInInterface.freezed.dart';

@freezed
class MarkShadowingParentReferencesInInterface
    with
        _$MarkShadowingParentReferencesInInterface,
        HashKeyMixin<MarkShadowingParentReferencesInInterface>,
        HashComparableMixin<MarkShadowingParentReferencesInInterface>,
        SwarsTransformMixin<
            MarkShadowingParentReferencesInInterface,
            $MarkShadowingParentReferencesInInterfaceCopyWith<
                MarkShadowingParentReferencesInInterface>,
            SwidInterface>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  MarkShadowingParentReferencesInInterface._();

  factory MarkShadowingParentReferencesInInterface({
    required final SwidClass parent,
    required final SwidInterface swidInterface,
  }) = _$MarkShadowingParentReferencesInInterfaceCtor;

  @override
  String get cacheGroup => "markShadowingParentReferencesInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* swidInterface.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferencesInInterface clone({
    final SwidClass? parent,
    final SwidInterface? swidInterface,
  }) =>
      MarkShadowingParentReferencesInInterface(
        parent: parent ?? this.parent,
        swidInterface: swidInterface ?? this.swidInterface,
      );

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        pipeline.reduceFromTerm(
          IsShadowingParentReference(
            parent: SwidType.fromSwidClass(
              swidClass: parent,
            ),
            reference: SwidType.fromSwidInterface(
              swidInterface: swidInterface,
            ),
          ),
        )
            ? swidInterface.clone(
                element: swidInterface.element?.let(
                      (it) => it.when(
                        fromSwidTypeArgumentElement: (_) =>
                            SwidElement.fromSwidInterfaceElement(
                          swidInterfaceElement: SwidInterfaceElement(
                            isShadowingParent: true,
                          ),
                        ),
                        fromSwidInterfaceElement: (val) =>
                            SwidElement.fromSwidInterfaceElement(
                          swidInterfaceElement: val.clone(
                            isShadowingParent: true,
                          ),
                        ),
                      ),
                    ) ??
                    SwidElement.fromSwidInterfaceElement(
                      swidInterfaceElement: SwidInterfaceElement(
                        isShadowingParent: true,
                      ),
                    ),
              )
            : swidInterface,
      );
}
