import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';

part 'swidDefaultFormalParameter.freezed.dart';
part 'swidDefaultFormalParameter.g.dart';

@freezed
abstract class SwidDefaultFormalParameter with _$SwidDefaultFormalParameter {
  factory SwidDefaultFormalParameter({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
    @required SwidType value,
  }) = _$Data;

  factory SwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =>
      _$SwidDefaultFormalParameterFromJson(json);

  factory SwidDefaultFormalParameter.clone(
          {@required SwidDefaultFormalParameter swidType}) =>
      SwidDefaultFormalParameter(
        name: swidType.name,
        nullabilitySuffix: swidType.nullabilitySuffix,
        originalPackagePath: swidType.originalPackagePath,
        value: cloneSwidType(swidType: swidType.value),
      );
}
