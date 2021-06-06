import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/hasUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/util/unsatisfiedTypeParameters.dart';

SwidClass propagateUnsatisfiedTypeParameters({
  required SwidClass swidClass,
  SwidClassTypeFormalClosureKind classTypeFormalClosureKind =
      SwidClassTypeFormalClosureKind.kNoCloseOverTypeFormalsInStaticMembers,
}) =>
    hasUnsatisfiedTypeParameters(
            swidType: SwidType.fromSwidClass(
      swidClass: swidClass,
    ))
        ? SwidClass.clone(
            swidClass: swidClass,
            factoryConstructors: swidClass.factoryConstructors
                .map(
                  (x) => ((List<SwidTypeFormal> unsatisfiedTypeParameters) =>
                      unsatisfiedTypeParameters.isNotEmpty
                          ? unsatisfiedTypeParameters.fold<SwidFunctionType>(
                              x,
                              (swidFunctionType, unsatisfiedTypeParameter) =>
                                  <SwidTypeFormal?>[
                                            ...swidFunctionType.typeFormals,
                                          ].firstWhere(
                                            (x) =>
                                                x?.value.name ==
                                                unsatisfiedTypeParameter
                                                    .value.name,
                                            orElse: () => null,
                                          ) ==
                                          null
                                      ? SwidFunctionType.clone(
                                          swidFunctionType: swidFunctionType,
                                          typeFormals: [
                                            ...swidFunctionType.typeFormals,
                                            unsatisfiedTypeParameter,
                                          ],
                                        )
                                      : SwidFunctionType.clone(
                                          swidFunctionType: swidFunctionType,
                                        ))
                          : SwidFunctionType.clone(
                              swidFunctionType: x,
                            ))(
                    unsatisfiedTypeParameters(
                      swidType: SwidType.fromSwidFunctionType(
                        swidFunctionType: x,
                      ),
                      classTypeFormalClosureKind: classTypeFormalClosureKind,
                    ),
                  ),
                )
                .toList(),
          )
        : SwidClass.clone(
            swidClass: swidClass,
          );
