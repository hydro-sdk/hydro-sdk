import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidStaticConstTopLevelVariableReference.freezed.dart';
part 'swidStaticConstTopLevelVariableReference.g.dart';

@freezed
class SwidStaticConstTopLevelVariableReference
    with _$SwidStaticConstTopLevelVariableReference {
  const SwidStaticConstTopLevelVariableReference._();

  const factory SwidStaticConstTopLevelVariableReference({
    required final String identifier,
    required final SwidType topLevelReference,
  }) = _$SwidStaticConstTopLevelVariableReferenceCtor;

  factory SwidStaticConstTopLevelVariableReference.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstTopLevelVariableReferenceFromJson(json);

  factory SwidStaticConstTopLevelVariableReference.clone({
    required final SwidStaticConstTopLevelVariableReference
        swidStaticConstTopLevelVariableReference,
    final String? identifier,
    final SwidType? topLevelReference,
  }) =>
      SwidStaticConstTopLevelVariableReference(
        identifier:
            identifier ?? swidStaticConstTopLevelVariableReference.identifier,
        topLevelReference: topLevelReference ??
            SwidType.clone(
              swidType:
                  swidStaticConstTopLevelVariableReference.topLevelReference,
            ),
      );
}
