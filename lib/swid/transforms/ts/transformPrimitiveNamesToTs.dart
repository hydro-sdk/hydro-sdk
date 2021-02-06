import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveInterfaceNamesToTs.dart';

SwidType transformPrimitiveNamesToTs({@required SwidType swidType}) =>
    swidType.when(
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType:
              transformPrimitiveFunctionTypeNamesToTs(swidFunctionType: val)),
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
        swidInterface: SwidInterface.clone(
          swidType: transformPrimitiveInterfaceNamesToTs(swidInterface: val),
          typeArguments: val.typeArguments
              .map((x) => transformPrimitiveNamesToTs(swidType: x))
              .toList(),
        ),
      ),
      fromSwidDefaultFormalParameter: (val) => swidType,
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
          swidClass: val,
          typeFormals: val.typeFormals
              .map((x) => SwidTypeFormal.clone(
                  swidTypeFormal: x,
                  value: x.value.when(
                    fromString: (val) =>
                        SwidTypeFormalValue.fromString(string: val),
                    fromSwidClass: (val) => SwidTypeFormalValue.fromSwidClass(
                        swidClass: transformPrimitiveNamesToTs(
                                swidType:
                                    SwidType.fromSwidClass(swidClass: val))
                            .when(
                      fromSwidInterface: (_) => null,
                      fromSwidClass: (val) => val,
                      fromSwidDefaultFormalParameter: (_) => null,
                      fromSwidFunctionType: (_) => null,
                    )),
                    fromSwidInterface: (val) =>
                        SwidTypeFormalValue.fromSwidInterface(
                            swidInterface: transformPrimitiveNamesToTs(
                                    swidType: SwidType.fromSwidInterface(
                                        swidInterface: val))
                                .when(
                      fromSwidInterface: (val) => val,
                      fromSwidClass: (_) => null,
                      fromSwidDefaultFormalParameter: (_) => null,
                      fromSwidFunctionType: (_) => null,
                    )),
                  )))
              .toList(),
        ),
      ),
    );
