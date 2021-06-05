import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';

part 'swidDefaultFormalParameter.freezed.dart';
part 'swidDefaultFormalParameter.g.dart';

@freezed
class SwidDefaultFormalParameter with _$SwidDefaultFormalParameter {
  const factory SwidDefaultFormalParameter({
    required String name,
    required SwidNullabilitySuffix nullabilitySuffix,
    required String originalPackagePath,
     required SwidType? value,
  }) = _$Data;

  factory SwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =>
      _$SwidDefaultFormalParameterFromJson(json);

  factory SwidDefaultFormalParameter.clone(
          {required SwidDefaultFormalParameter swidType}) =>
      SwidDefaultFormalParameter(
        name: swidType.name,
        nullabilitySuffix: swidType.nullabilitySuffix,
        originalPackagePath: swidType.originalPackagePath,
        value: cloneSwidType(swidType: swidType.value!),
      );
}
