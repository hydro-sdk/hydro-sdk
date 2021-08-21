import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';

SwidType removeNullabilitySuffixFromTypeNames(
        {required final SwidType swidType}) =>
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
