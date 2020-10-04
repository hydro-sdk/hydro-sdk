import 'package:hydro_sdk/swid/ir/narrowSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:meta/meta.dart';

SwidType cloneSwidType({@required SwidType swidType}) => narrowSwidType(
      swidType: swidType,
      onSwidFunctionType: (res) =>
          SwidFunctionType.clone(swidFunctionType: res),
      onSwidType: (res) => SwidType.clone(swidType: res),
      onSwidDefaultFormalParameter: (res) =>
          SwidDefaultFormalParameter.clone(swidType: res),
    );
