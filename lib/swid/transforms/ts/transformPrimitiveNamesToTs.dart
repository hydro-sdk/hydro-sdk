import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/mapPrimitiveSwidTypeNameToPrimitiveTsTypeName.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';

SwidType transformPrimitiveNamesToTs({@required SwidType swidType}) =>
    swidType.when(
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType:
              transformPrimitiveFunctionTypeNamesToTs(swidFunctionType: val)),
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
        swidInterface: SwidInterface.clone(
          swidType: val,
          name: val.originalPackagePath == "dart:core"
              ? mapPrimitiveSwidTypeNameToPrimitiveTsTypeName(str: val.name)
              : val.name,
          typeArguments: val.typeArguments
              .map((x) => transformPrimitiveNamesToTs(swidType: x))
              .toList(),
        ),
      ),
      fromSwidDefaultFormalParameter: (val) => swidType,
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
          swidClass: val,
          name: val.originalPackagePath == "dart:core"
              ? mapPrimitiveSwidTypeNameToPrimitiveTsTypeName(str: val.name)
              : val.name,
          extendedClass: val.extendedClass != null
              ? transformPrimitiveNamesToTs(
                      swidType:
                          SwidType.fromSwidClass(swidClass: val.extendedClass))
                  .when(
                  fromSwidInterface: (_) => null,
                  fromSwidClass: (val) => val,
                  fromSwidDefaultFormalParameter: (_) => null,
                  fromSwidFunctionType: (_) => null,
                )
              : null,
          implementedClasses: val.implementedClasses
              .map((x) => transformPrimitiveNamesToTs(
                          swidType: SwidType.fromSwidClass(swidClass: x))
                      .when(
                    fromSwidInterface: (_) => null,
                    fromSwidClass: (val) => val,
                    fromSwidDefaultFormalParameter: (_) => null,
                    fromSwidFunctionType: (_) => null,
                  ))
              .toList(),
          mixedInClasses: val.mixedInClasses
              .map((x) => transformPrimitiveNamesToTs(
                          swidType: SwidType.fromSwidClass(swidClass: x))
                      .when(
                    fromSwidInterface: (_) => null,
                    fromSwidClass: (val) => val,
                    fromSwidDefaultFormalParameter: (_) => null,
                    fromSwidFunctionType: (_) => null,
                  ))
              .toList(),
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
