import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidType cloneSwidType({
  required final SwidType swidType,
  SwidNullabilitySuffix? swidNullabilitySuffix,
}) =>
    swidType.map(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
              swidType: val.swidInterface,
              nullabilitySuffix: swidNullabilitySuffix)),
      fromSwidClass: (val) => SwidType.fromSwidClass(
          swidClass: SwidClass.clone(
              swidClass: val.swidClass,
              nullabilitySuffix: swidNullabilitySuffix)),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
              swidDefaultFormalParameter: SwidDefaultFormalParameter.clone(
        swidDefaultFormalParameter: val.swidDefaultFormalParameter,
      )),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType.clone(
              swidFunctionType: val.swidFunctionType,
              nullabilitySuffix: swidNullabilitySuffix)),
    );
