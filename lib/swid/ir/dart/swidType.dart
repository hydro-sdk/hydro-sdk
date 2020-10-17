import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

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
}
