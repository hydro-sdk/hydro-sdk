import 'package:hydro_sdk/swid/ir/frontend/dart/hasUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/unsatisfiedTypeParameters.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';

SwidClass propagateUnsatisfiedTypeParameters(
        {@required SwidClass swidClass,
        SwidClassTypeFormalClosureKind classTypeFormalClosureKind =
            SwidClassTypeFormalClosureKind
                .kNoCloseOverTypeFormalsInStaticMembers}) =>
    hasUnsatisfiedTypeParameters(
            swidType: SwidType.fromSwidClass(swidClass: swidClass))
        ? SwidClass.clone(
            swidClass: swidClass,
            factoryConstructors: swidClass.factoryConstructors
                .map(
                  (x) => ((List<SwidTypeFormal> unsatisfiedTypeParameters) =>
                      unsatisfiedTypeParameters.isNotEmpty
                          ? unsatisfiedTypeParameters.fold<SwidFunctionType>(
                              x,
                              (swidFunctionType, unsatisfiedTypeParameter) =>
                                  swidFunctionType.typeFormals.firstWhere(
                                            (x) =>
                                                x.name ==
                                                unsatisfiedTypeParameter.name,
                                            orElse: () => null,
                                          ) ==
                                          null
                                      ? SwidFunctionType.clone(
                                          swidFunctionType: swidFunctionType,
                                          typeFormals: [
                                              ...swidFunctionType.typeFormals,
                                              unsatisfiedTypeParameter,
                                            ])
                                      : SwidFunctionType.clone(
                                          swidFunctionType: swidFunctionType))
                          : SwidFunctionType.clone(swidFunctionType: x))(
                    unsatisfiedTypeParameters(
                      swidType:
                          SwidType.fromSwidFunctionType(swidFunctionType: x),
                      classTypeFormalClosureKind: classTypeFormalClosureKind,
                    ),
                  ),
                )
                .toList(),
          )
        : SwidClass.clone(swidClass: swidClass);
