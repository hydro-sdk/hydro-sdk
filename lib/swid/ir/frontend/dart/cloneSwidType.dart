import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
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
