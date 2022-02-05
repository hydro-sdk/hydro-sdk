import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferencesInClass.freezed.dart';

@freezed
class MarkShadowingParentReferencesInClass
    with
        _$MarkShadowingParentReferencesInClass,
        HashKeyMixin<MarkShadowingParentReferencesInClass>,
        HashComparableMixin<MarkShadowingParentReferencesInClass>,
        SwarsTransformMixin<
            MarkShadowingParentReferencesInClass,
            $MarkShadowingParentReferencesInClassCopyWith<
                MarkShadowingParentReferencesInClass>,
            SwidClass>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  MarkShadowingParentReferencesInClass._();

  factory MarkShadowingParentReferencesInClass({
    required final SwidClass parent,
    required final SwidClass swidClass,
  }) = _$MarkShadowingParentReferencesInClassCtor;

  @override
  String get cacheGroup => "markShadowingParentReferencesInClass";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferencesInClass clone({
    final SwidClass? parent,
    final SwidClass? swidClass,
  }) =>
      MarkShadowingParentReferencesInClass(
        parent: parent ?? this.parent,
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidClass.clone(
          constructorType: swidClass.constructorType?.let(
            (it) => pipeline.reduceFromTerm(
              MarkShadowingParentReferencesInFunction(
                parent: parent,
                swidFunctionType: it,
              ),
            ),
          ),
          generativeConstructors: swidClass.generativeConstructors
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInFunction(
                    parent: parent,
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          factoryConstructors: swidClass.factoryConstructors
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInFunction(
                    parent: parent,
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          staticMethods: swidClass.staticMethods
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInFunction(
                    parent: parent,
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          methods: swidClass.methods
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInFunction(
                    parent: parent,
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          instanceFieldDeclarations: Map.fromEntries(
            swidClass.instanceFieldDeclarations.entries.map(
              (x) => MapEntry(
                x.key,
                x.value.when(
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
              ),
            ),
          ),
        ),
      );
}
