import 'package:hydro_sdk/swid/ir/dart/narrowSwidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveSwidTypeNamesToTs.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';

SwidType transformPrimitiveNamesToTs({@required SwidType swidType}) =>
    narrowSwidType(
        swidType: swidType,
        onSwidFunctionType: (res) =>
            transformPrimitiveFunctionTypeNamesToTs(swidFunctionType: res),
        onSwidType: (res) => transformPrimitiveSwidTypeNamesToTs(swidType: res),
        onSwidDefaultFormalParameter: null);
