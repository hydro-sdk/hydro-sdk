import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

part 'swidType.freezed.dart';
part 'swidType.g.dart';

@freezed
abstract class SwidType with _$SwidType {
  const factory SwidType.fromSwidInterface({@required SwidInterface swidInterface}) =
      _$FromSwidInterface;

  const factory SwidType.fromSwidClass({@required SwidClass swidClass}) =
      _$FromSwidClass;

  const factory SwidType.fromSwidDefaultFormalParameter(
          {@required SwidDefaultFormalParameter swidDefaultFormalParameter}) =
      _$FromSwidDefaultFormalParameter;

  const factory SwidType.fromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) = _$FromSwidFunctionType;

  factory SwidType.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFromJson(json);
}

extension SwidTypeMethods on SwidType {
  SwidNullabilitySuffix get nullabilitySuffix => when(
      fromSwidInterface: (val) => val.nullabilitySuffix,
      fromSwidClass: (val) => val.nullabilitySuffix,
      fromSwidDefaultFormalParameter: (val) => val.nullabilitySuffix,
      fromSwidFunctionType: (val) => val.nullabilitySuffix);

  String get name => when(
        fromSwidInterface: (val) => val.name,
        fromSwidClass: (val) => val.name,
        fromSwidDefaultFormalParameter: (val) => val.name,
        fromSwidFunctionType: (val) => val.name,
      );

  String get originalPackagePath => when(
        fromSwidInterface: (val) => val.originalPackagePath,
        fromSwidClass: (val) => val.originalPackagePath,
        fromSwidDefaultFormalParameter: (val) => val.originalPackagePath,
        fromSwidFunctionType: (val) => val.originalPackagePath,
      );

  String get displayName => [
        when(
          fromSwidInterface: (val) => [
            removeTypeArguments(str: val.name),
            ...(val.typeArguments.isNotEmpty
                ? [
                    "<",
                    val.typeArguments
                        .map((x) => x.displayName)
                        .toList()
                        .join(","),
                    ">"
                  ]
                : [])
          ].join(""),
          fromSwidClass: (val) => [
            removeTypeArguments(str: val.name),
            ...(val.typeFormals.isNotEmpty
                ? [
                    "<",
                    val.typeFormals
                        .map((x) => x.value.displayName)
                        .toList()
                        .join(""),
                    ">"
                  ]
                : [])
          ].join(""),
          fromSwidDefaultFormalParameter: (val) => val.name,
          fromSwidFunctionType: (val) => val.name,
        ),
      ].join("");
}
