import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveSwidTypeNamesToTs.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';

SwidType transformPrimitiveNamesToTs({@required SwidType swidType}) =>
    swidType.when(
      fromSwidFunctionType: (res) => SwidType.fromSwidFunctionType(
          swidFunctionType:
              transformPrimitiveFunctionTypeNamesToTs(swidFunctionType: res)),
      fromSwidInterface: (res) => SwidType.fromSwidInterface(
          swidInterface:
              transformPrimitiveSwidTypeNamesToTs(swidInterface: res)),
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidClass: (_) => null,
    );
