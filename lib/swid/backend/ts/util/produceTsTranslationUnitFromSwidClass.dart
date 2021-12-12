import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/ts/analyses/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/backend/ts/tsImportBlock.dart';
import 'package:hydro_sdk/swid/backend/ts/tsInterface.dart';
import 'package:hydro_sdk/swid/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTranslationUnitOverrideDelegate.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/backend/util/prepareClassForTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/ir/util/propagateUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

TsTranslationUnit produceTsTranslationUnitFromSwidClass({
  required final SwidClass swidClass,
  required final String baseFileName,
  required final String path,
  required final List<String> prefixPaths,
  required final ISwarsPipeline pipeline,
}) =>
    (({
      required final SwidClass swidClass,
      required final SwidClass swidClassWithInterfaceReferences,
      required final SwidClass unMergedSwidClassWithInterfaceReferences,
    }) =>
        TsTranslationUnit(
          pipeline: pipeline,
          path: prefixPaths.join(p.separator) + p.separator + path,
          fileName: "$baseFileName.ts",
          ir: swidClass.declarationModifiers.overridenTransforms
                      .firstWhereOrNull(
                    (x) => x.item1 == "tsTranslationUnit",
                  ) !=
                  null
              ? [
                  TsIr.fromTsTranslationUnitOverrideDelegate(
                    tsTranslationUnitOverrideDelegate:
                        TsTranslationUnitOverrideDelegate(
                      swidClass: swidClass,
                    ),
                  ),
                ]
              : (!swidClass.isPureAbstract() &&
                      !swidClass.isMixin &&
                      swidClass.originalPackagePath != "dart:_internal" &&
                      (requiresDartBinding(
                            pipeline: pipeline,
                            swidClass: swidClass,
                          ) ||
                          swidClass.isConstructible() ||
                          swidClass.staticConstFieldDeclarations.isNotEmpty ||
                          swidClass.staticMethods.isNotEmpty ||
                          swidClass.factoryConstructors.isNotEmpty)
                  ? ([
                      TsIr.fromTsLinebreak(
                        tsLinebreak: TsLinebreak(),
                      ),
                      ...tsImportBlock(
                        swidClass: pipeline.reduceFromTerm(
                          ApplySuperTypes(
                            swidClass: swidClass,
                          ),
                        ),
                        prefixPaths: prefixPaths,
                        pipeline: pipeline,
                      ),
                      TsIr.fromTsClassVmDeclaration(
                        tsClassVmDeclaration: TsClassVmDeclaration(
                          swidClass: propagateUnsatisfiedTypeParameters(
                            swidClass: swidClass,
                          ),
                        ),
                      ),
                      TsIr.fromTsInterface(
                        tsInterface: TsInterface(
                          emitSuperInterfaceExtensions: false,
                          swidClass: SwidClass.clone(
                            swidClass: swidClassWithInterfaceReferences,
                            name: "I${swidClassWithInterfaceReferences.name}",
                            methods: pipeline.reduceFromTerm(
                              TsClassMethodInjectionCandidates(
                                swidFunctionTypes:
                                    swidClassWithInterfaceReferences.methods,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TsIr.fromTsClassPreamble(
                        tsClassPreamble: TsClassPreamble(
                          swidClass: swidClassWithInterfaceReferences,
                        ),
                      ),
                      TsIr.fromTsClassStaticConstFieldDeclarations(
                        tsClassStaticConstFieldDeclarations:
                            TsClassStaticConstFieldDeclarations(
                          swidClass: swidClass,
                        ),
                      ),
                      TsIr.fromTsClassInstanceFieldDeclarations(
                        tsClassInstanceFieldDeclarations:
                            TsClassInstanceFieldDeclarations(
                          swidClass:
                              rewriteClassReferencesToInterfaceReferencesInClass(
                            swidClass: pipeline.reduceFromTerm(
                              ApplySuperTypes(
                                swidClass: swidClass,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TsIr.fromTsClassConstructorImplementation(
                        tsClassConstructorImplementation:
                            TsClassConstructorImplementation(
                          swidClass:
                              rewriteClassReferencesToInterfaceReferencesInClass(
                            swidClass: swidClass,
                          ),
                        ),
                      ),
                      ...((SwidClass propagatedClass) => ([
                            ...[
                              ...propagatedClass.factoryConstructors,
                              ...propagatedClass.staticMethods,
                            ]
                                .map(
                                  (x) => TsIr
                                      .fromTsClassStaticMethodImplementation(
                                    tsClassStaticMethodImplementation:
                                        TsClassStaticMethodImplementation(
                                      swidClass: propagatedClass,
                                      swidFunctionType: x,
                                    ),
                                  ),
                                )
                                .toList(),
                          ]))(
                        propagateUnsatisfiedTypeParameters(
                          swidClass: swidClass,
                        ),
                      ),
                      TsIr.fromTsClassMethodInjectionFieldDeclarations(
                        tsClassMethodInjectionFieldDeclarations:
                            TsClassMethodInjectionFieldDeclarations(
                          swidClass: pipeline.reduceFromTerm(
                            ApplySuperTypes(
                              swidClass: swidClass,
                            ),
                          ),
                        ),
                      ),
                      TsIr.fromTsClassMethodDeclarations(
                        tsClassMethodDeclarations: TsClassMethodDeclarations(
                          swidClass: pipeline.reduceFromTerm(
                            ApplySuperTypes(
                              swidClass: swidClass,
                            ),
                          ),
                        ),
                      ),
                      TsIr.fromTsClassPostamble(
                        tsClassPostamble: TsClassPostamble(
                          swidClass: swidClass,
                        ),
                      ),
                      swidClass.constructorType != null
                          ? TsIr.fromTsFunctionDefaultNamedProps(
                              tsFunctionDefaultNamedProps:
                                  TsFunctionDefaultNamedProps(
                                swidFunctionType: SwidFunctionType.clone(
                                  swidFunctionType: swidClass.constructorType!,
                                  name: swidClass.name,
                                ),
                              ),
                            )
                          : null,
                      ...([
                        ...pipeline
                            .reduceFromTerm(
                              ApplySuperTypes(
                                swidClass: swidClass,
                              ),
                            )
                            .methods,
                        ...swidClass.factoryConstructors,
                        ...swidClass.staticMethods,
                      ].map(
                        (x) => TsIr.fromTsFunctionDefaultNamedProps(
                          tsFunctionDefaultNamedProps:
                              TsFunctionDefaultNamedProps(
                            swidFunctionType: x,
                          ),
                        ),
                      )),
                    ]..removeWhere(
                      (x) => x == null,
                    ))
                  : [
                      TsIr.fromTsLinebreak(
                        tsLinebreak: TsLinebreak(),
                      ),
                      ...tsImportBlock(
                        swidClass: swidClass,
                        prefixPaths: prefixPaths,
                        pipeline: pipeline,
                      ),
                      TsIr.fromTsInterface(
                        tsInterface: TsInterface(
                          emitSuperInterfaceExtensions: true,
                          swidClass: SwidClass.clone(
                            swidClass: unMergedSwidClassWithInterfaceReferences,
                            name:
                                "I${unMergedSwidClassWithInterfaceReferences.name}",
                            methods: pipeline.reduceFromTerm(
                              TsClassMethodInjectionCandidates(
                                swidFunctionTypes:
                                    unMergedSwidClassWithInterfaceReferences
                                        .methods,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
        ))(
      swidClass: prepareClassForTranslationUnit(
        swidClass: swidClass,
        pipeline: pipeline,
      ).item1,
      swidClassWithInterfaceReferences: prepareClassForTranslationUnit(
        swidClass: swidClass,
        pipeline: pipeline,
      ).item3,
      unMergedSwidClassWithInterfaceReferences: prepareClassForTranslationUnit(
        swidClass: swidClass,
        pipeline: pipeline,
      ).item2,
    );
