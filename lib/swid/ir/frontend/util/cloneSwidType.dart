import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';

SwidType cloneSwidType({
  @required SwidType swidType,
  SwidNullabilitySuffix swidNullabilitySuffix,
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
        swidType: val.swidDefaultFormalParameter,
      )),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType.clone(
              swidFunctionType: val.swidFunctionType,
              nullabilitySuffix: swidNullabilitySuffix)),
    );
