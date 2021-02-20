import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';

part "swidInstantiatedGeneric.freezed.dart";
part "swidInstantiatedGeneric.g.dart";

@freezed
abstract class SwidInstantiatedGeneric with _$SwidInstantiatedGeneric {
  factory SwidInstantiatedGeneric({
    @required SwidInstantiableGeneric instantiableGeneric,
    @required SwidReferenceDeclarationKind referenceDeclarationKind,
  }) = _$SwidInstantiatedGenericCtor;

  factory SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
          {@required SwidInstantiableGeneric swidInstantiableGeneric}) =>
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
}
