import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:meta/meta.dart';

SwidType cloneSwidType({@required SwidType swidType}) => swidType.map(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(swidType: val.swidInterface)),
      fromSwidClass: (val) => SwidType.fromSwidClass(
          swidClass: SwidClass.clone(swidClass: val.swidClass)),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
              swidDefaultFormalParameter: SwidDefaultFormalParameter.clone(
                  swidType: val.swidDefaultFormalParameter)),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType:
              SwidFunctionType.clone(swidFunctionType: val.swidFunctionType)),
    );
