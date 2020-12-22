import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';

SwidType removeNullabilitySuffixFromTypeNames({@required SwidType swidType}) =>
    swidType.when(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
              swidType: val, name: removeNullabilitySuffix(str: val.name))),
      fromSwidClass: (val) => SwidType.fromSwidClass(
          swidClass: SwidClass.clone(
              swidClass: val, name: removeNullabilitySuffix(str: val.name))),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
              swidDefaultFormalParameter: val),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType.clone(
              swidFunctionType: val,
              name: removeNullabilitySuffix(str: val.name))),
    );
