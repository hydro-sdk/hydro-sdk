import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part "swidInstantiatedGeneric.freezed.dart";
part "swidInstantiatedGeneric.g.dart";

@freezed
class SwidInstantiatedGeneric
    with
        _$SwidInstantiatedGeneric,
        HashKeyMixin<SwidInstantiatedGeneric>,
        HashComparableMixin<SwidInstantiatedGeneric>
    implements
        ICopyable<SwidInstantiatedGeneric,
            $SwidInstantiatedGenericCopyWith<SwidInstantiatedGeneric>> {
  SwidInstantiatedGeneric._();

  factory SwidInstantiatedGeneric({
    required final SwidInstantiableGeneric instantiableGeneric,
    required final SwidReferenceDeclarationKind referenceDeclarationKind,
  }) = _$SwidInstantiatedGenericCtor;

  factory SwidInstantiatedGeneric.fromSwidInstantiableGeneric({
    required final SwidInstantiableGeneric swidInstantiableGeneric,
  }) =>
      swidInstantiableGeneric.when(
        fromSwidClass: (val) => SwidInstantiatedGeneric(
          instantiableGeneric:
              SwidInstantiableGeneric.fromSwidClass(swidClass: val),
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
        fromSwidInterface: (val) => SwidInstantiatedGeneric(
          instantiableGeneric:
              SwidInstantiableGeneric.fromSwidInterface(swidInterface: val),
          referenceDeclarationKind: val.referenceDeclarationKind,
        ),
        fromSwidFunctionType: (val) => SwidInstantiatedGeneric(
          instantiableGeneric: SwidInstantiableGeneric.fromSwidFunctionType(
              swidFunctionType: val),
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      );

  factory SwidInstantiatedGeneric.fromJson(Map<String, dynamic> json) =>
      _$SwidInstantiatedGenericFromJson(json);

  factory SwidInstantiatedGeneric._clone({
    required final SwidInstantiatedGeneric swidInstantiatedGeneric,
    final SwidInstantiableGeneric? instantiableGeneric,
    final SwidReferenceDeclarationKind? referenceDeclarationKind,
  }) =>
      SwidInstantiatedGeneric(
        instantiableGeneric:
            instantiableGeneric ?? swidInstantiatedGeneric.instantiableGeneric,
        referenceDeclarationKind: referenceDeclarationKind ??
            swidInstantiatedGeneric.referenceDeclarationKind,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* instantiableGeneric.hashKey.hashableParts;
    yield [
      referenceDeclarationKind.index,
    ];
  })();

  @override
  SwidInstantiatedGeneric clone({
    final SwidInstantiableGeneric? instantiableGeneric,
    final SwidReferenceDeclarationKind? referenceDeclarationKind,
  }) =>
      SwidInstantiatedGeneric._clone(
        swidInstantiatedGeneric: this,
        instantiableGeneric: instantiableGeneric,
        referenceDeclarationKind: referenceDeclarationKind,
      );
}
