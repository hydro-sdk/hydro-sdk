import 'package:hydro_sdk/swid/ir/dart/narrowSwidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:meta/meta.dart';

SwidType cloneSwidType({@required SwidType swidType}) => narrowSwidType(
      swidType: swidType,
      onSwidFunctionType: (res) =>
          SwidFunctionType.clone(swidFunctionType: res),
      onSwidType: (res) => SwidType.clone(swidType: res),
      onSwidDefaultFormalParameter: (res) =>
          SwidDefaultFormalParameter.clone(swidType: res),
    );
