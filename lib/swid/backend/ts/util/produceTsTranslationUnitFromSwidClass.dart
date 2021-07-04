import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionCandidates.dart';
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
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/backend/util/prepareClassForTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/propagateUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';

TsTranslationUnit produceTsTranslationUnitFromSwidClass({
  required SwidClass swidClass,
  required String baseFileName,
  required String path,
  required List<String> prefixPaths,
}) =>
    (({
      required SwidClass swidClass,
      required SwidClass swidClassWithInterfaceReferences,
      required SwidClass unMergedSwidClassWithInterfaceReferences,
    }) =>
        TsTranslationUnit(
            path: prefixPaths.join(p.separator) + p.separator + path,
            fileName: "$baseFileName.ts",
            ir: !swidClass.isPureAbstract() &&
                    !swidClass.isMixin &&
                    swidClass.originalPackagePath != "dart:_internal" &&
                    (requiresDartBinding(swidClass: swidClass) ||
                        swidClass.isConstructible() ||
                        swidClass.staticConstFieldDeclarations.isNotEmpty ||
                        swidClass.staticMethods.isNotEmpty ||
                        swidClass.factoryConstructors.isNotEmpty)
                ? ([
                    TsIr.fromTsLinebreak(tsLinebreak: TsLinebreak()),
                    ...tsImportBlock(
                        swidClass:
                            SwidClass.mergeSuperClasses(swidClass: swidClass),
                        prefixPaths: prefixPaths),
                    TsIr.fromTsClassVmDeclaration(
                        tsClassVmDeclaration: TsClassVmDeclaration(
                            swidClass: propagateUnsatisfiedTypeParameters(
                                swidClass: swidClass))),
                    swidClass.constructorType != null
                        ? TsIr.fromTsFunctionDefaultNamedProps(
                            tsFunctionDefaultNamedProps:
                                TsFunctionDefaultNamedProps(
                                    swidFunctionType: SwidFunctionType.clone(
                                        swidFunctionType:
                                            swidClass.constructorType!,
                                        name: swidClass.name)),
                          )
                        : null,
                    ...([
                      ...SwidClass.mergeSuperClasses(swidClass: swidClass)
                          .methods,
                      ...swidClass.factoryConstructors,
                      ...swidClass.staticMethods,
                    ].map((x) => TsIr.fromTsFunctionDefaultNamedProps(
                        tsFunctionDefaultNamedProps:
                            TsFunctionDefaultNamedProps(swidFunctionType: x)))),
                    TsIr.fromTsInterface(
                        tsInterface: TsInterface.fromSwidClass(
                            emitSuperInterfaceExtensions: false,
                            swidClass: SwidClass.clone(
                                swidClass: swidClassWithInterfaceReferences,
                                name:
                                    "I${swidClassWithInterfaceReferences.name}",
                                methods: tsClassMethodInjectionCandidates(
                                    swidFunctionTypes:
                                        swidClassWithInterfaceReferences
                                            .methods)))),
                    TsIr.fromTsClassPreamble(
                        tsClassPreamble: TsClassPreamble(
                            swidClass: swidClassWithInterfaceReferences)),
                    TsIr.fromTsClassStaticConstFieldDeclarations(
                        tsClassStaticConstFieldDeclarations:
                            TsClassStaticConstFieldDeclarations(
                                swidClass: swidClass)),
                    TsIr.fromTsClassInstanceFieldDeclarations(
                        tsClassInstanceFieldDeclarations:
                            TsClassInstanceFieldDeclarations(
                                swidClass:
                                    rewriteClassReferencesToInterfaceReferencesInClass(
                                        swidClass: SwidClass.mergeSuperClasses(
                                            swidClass: swidClass)))),
                    TsIr.fromTsClassConstructorImplementation(
                        tsClassConstructorImplementation:
                            TsClassConstructorImplementation(
                                swidClass:
                                    rewriteClassReferencesToInterfaceReferencesInClass(
                                        swidClass: swidClass))),
                    ...((SwidClass propagatedClass) => ([
                              ...[
                                ...propagatedClass.factoryConstructors,
                                ...propagatedClass.staticMethods,
                              ]
                                  .map((x) => TsIr
                                      .fromTsClassStaticMethodImplementation(
                                          tsClassStaticMethodImplementation:
                                              TsClassStaticMethodImplementation(
                                                  swidClass: propagatedClass,
                                                  swidFunctionType: x)))
                                  .toList()
                            ]))(
                        propagateUnsatisfiedTypeParameters(
                            swidClass: swidClass)),
                    TsIr.fromTsClassMethodInjectionFieldDeclarations(
                        tsClassMethodInjectionFieldDeclarations:
                            TsClassMethodInjectionFieldDeclarations(
                                swidClass: SwidClass.mergeSuperClasses(
                                    swidClass: swidClass))),
                    TsIr.fromTsClassMethodDeclarations(
                        tsClassMethodDeclarations: TsClassMethodDeclarations(
                            swidClass: SwidClass.mergeSuperClasses(
                                swidClass: swidClass))),
                    TsIr.fromTsClassPostamble(
                        tsClassPostamble:
                            TsClassPostamble(swidClass: swidClass))
                  ]..removeWhere((x) => x == null))
                : [
                    TsIr.fromTsLinebreak(tsLinebreak: TsLinebreak()),
                    ...tsImportBlock(
                        swidClass: swidClass, prefixPaths: prefixPaths),
                    TsIr.fromTsInterface(
                      tsInterface: TsInterface.fromSwidClass(
                        emitSuperInterfaceExtensions: true,
                        swidClass: SwidClass.clone(
                          swidClass: unMergedSwidClassWithInterfaceReferences,
                          name:
                              "I${unMergedSwidClassWithInterfaceReferences.name}",
                          methods: tsClassMethodInjectionCandidates(
                            swidFunctionTypes:
                                unMergedSwidClassWithInterfaceReferences
                                    .methods,
                          ),
                        ),
                      ),
                    ),
                  ]))(
      swidClass: prepareClassForTranslationUnit(swidClass: swidClass).item1,
      swidClassWithInterfaceReferences:
          prepareClassForTranslationUnit(swidClass: swidClass).item3,
      unMergedSwidClassWithInterfaceReferences:
          prepareClassForTranslationUnit(swidClass: swidClass).item2,
    );
