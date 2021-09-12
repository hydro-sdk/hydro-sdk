import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstTopLevelVariableReference.freezed.dart';
part 'swidStaticConstTopLevelVariableReference.g.dart';

@freezed
class SwidStaticConstTopLevelVariableReference
    with
        _$SwidStaticConstTopLevelVariableReference,
        HashKeyMixin<SwidStaticConstTopLevelVariableReference>,
        HashComparableMixin<SwidStaticConstTopLevelVariableReference>
    implements
        ICopyable<
            SwidStaticConstTopLevelVariableReference,
            $SwidStaticConstTopLevelVariableReferenceCopyWith<
                SwidStaticConstTopLevelVariableReference>> {
  SwidStaticConstTopLevelVariableReference._();

  factory SwidStaticConstTopLevelVariableReference({
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

  @override
  List<int> get hashableParts => [
        ...identifier.hashableParts,
        ...topLevelReference.hashableParts,
      ];

  @override
  SwidStaticConstTopLevelVariableReference clone({
    final String? identifier,
    final SwidType? topLevelReference,
  }) =>
      SwidStaticConstTopLevelVariableReference.clone(
        swidStaticConstTopLevelVariableReference: this,
        identifier: identifier,
        topLevelReference: topLevelReference,
      );
}
