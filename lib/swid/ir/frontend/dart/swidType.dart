import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';

part 'swidType.freezed.dart';
part 'swidType.g.dart';

@freezed
abstract class SwidType with _$SwidType {
  factory SwidType.fromSwidInterface({@required SwidInterface swidInterface}) =
      _$FromSwidInterface;

  factory SwidType.fromSwidClass({@required SwidClass swidClass}) =
      _$FromSwidClass;

  factory SwidType.fromSwidDefaultFormalParameter(
          {@required SwidDefaultFormalParameter swidDefaultFormalParameter}) =
      _$FromSwidDefaultFormalParameter;

  factory SwidType.fromSwidFunctionType(
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
}
