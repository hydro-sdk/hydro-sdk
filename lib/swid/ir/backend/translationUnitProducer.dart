import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/methodIsEmitCandidate.dart';
import 'package:hydro_sdk/swid/ir/backend/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsInterface.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/propagateUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';

class TranslationUnitProducer {
  final List<String> tsPrefixPaths;
  final List<String> dartPrefixPaths;
  final String path;
  final String baseFileName;

  TranslationUnitProducer(
      {@required this.tsPrefixPaths,
      @required this.dartPrefixPaths,
      @required this.path,
      @required this.baseFileName});

  List<TranslationUnit> produceFromSwidEnum({@required SwidEnum swidEnum}) => [
        TsTranslationUnit(
            path: tsPrefixPaths.join(p.separator) + p.separator + path,
            fileName: "$baseFileName.ts",
            ir: [TsIr.fromTsEnum(tsEnum: TsEnum(swidEnum: swidEnum))])
      ];

  List<TranslationUnit> produceFromSwidClass({@required SwidClass swidClass}) =>
      (({
        SwidClass swidClass,
        SwidClass swidClassWithInterfaceReferences,
        SwidClass unMergedSwidClassWithInterfaceReferences,
      }) =>
          [
            TsTranslationUnit(
                path: tsPrefixPaths.join(p.separator) + p.separator + path,
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
                        TsIr.fromTsClassVmDeclaration(
                            tsClassVmDeclaration: TsClassVmDeclaration(
                                swidClass: propagateUnsatisfiedTypeParameters(
                                    swidClass: swidClass))),
                        swidClass.constructorType != null
                            ? TsIr.fromTsFunctionDefaultNamedProps(
                                tsFunctionDefaultNamedProps:
                                    TsFunctionDefaultNamedProps(
                                        swidFunctionType:
                                            SwidFunctionType.clone(
                                                swidFunctionType:
                                                    swidClass.constructorType,
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
                                TsFunctionDefaultNamedProps(
                                    swidFunctionType: x)))),
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
                            tsClassPreamble:
                                TsClassPreamble(swidClass: swidClass)),
                        TsIr.fromTsClassStaticConstFieldDeclarations(
                            tsClassStaticConstFieldDeclarations:
                                TsClassStaticConstFieldDeclarations(
                                    swidClass: swidClass)),
                        TsIr.fromTsClassInstanceFieldDeclarations(
                            tsClassInstanceFieldDeclarations:
                                TsClassInstanceFieldDeclarations(
                                    swidClass: SwidClass.mergeSuperClasses(
                                        swidClass: swidClass))),
                        TsIr.fromTsClassConstructorImplementation(
                            tsClassConstructorImplementation:
                                TsClassConstructorImplementation(
                                    swidClass: swidClass)),
                        ...((SwidClass propagatedClass) => ([
                                  ...[
                                    ...propagatedClass.factoryConstructors,
                                    ...propagatedClass.staticMethods,
                                  ]
                                      .map((x) => TsIr
                                          .fromTsClassStaticMethodImplementation(
                                              tsClassStaticMethodImplementation:
                                                  TsClassStaticMethodImplementation(
                                                      swidClass:
                                                          propagatedClass,
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
                            tsClassMethodDeclarations:
                                TsClassMethodDeclarations(
                                    swidClass: SwidClass.mergeSuperClasses(
                                        swidClass: swidClass))),
                        TsIr.fromTsClassPostamble(
                            tsClassPostamble:
                                TsClassPostamble(swidClass: swidClass))
                      ]..removeWhere((x) => x == null))
                    : [
                        TsIr.fromTsLinebreak(tsLinebreak: TsLinebreak()),
                        TsIr.fromTsInterface(
                          tsInterface: TsInterface.fromSwidClass(
                            emitSuperInterfaceExtensions: true,
                            swidClass: SwidClass.clone(
                              swidClass:
                                  unMergedSwidClassWithInterfaceReferences,
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
                      ]),
            swidClass.originalPackagePath != "dart:_internal" &&
                    (requiresDartBinding(swidClass: swidClass) ||
                        swidClass.isConstructible())
                ? DartTranslationUnit(
                    path:
                        dartPrefixPaths.join(p.separator) + p.separator + path,
                    fileName: "$baseFileName.dart",
                    ir: [
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      DartIr.fromVMManagedClassDeclaration(
                        vmManagedClassDeclaration: VMManagedClassDeclaration(
                          swidClass:
                              SwidClass.mergeSuperClasses(swidClass: swidClass),
                        ),
                      ),
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      !swidClass.isPureAbstract() &&
                              swidClass.isConstructible() &&
                              !swidClass.constructorType.isFactory
                          ? DartIr.fromRTManagedClassDeclaration(
                              rtManagedClassDeclaration:
                                  RTManagedClassDeclaration(
                                      swidClass: SwidClass.mergeSuperClasses(
                                          swidClass: swidClass)),
                            )
                          : null,
                      DartIr.fromLoadNamepsaceSymbolDeclaration(
                          loadNamespaceSymbolDeclaration:
                              LoadNamespaceSymbolDeclaration(
                                  swidClass: swidClass))
                    ]..removeWhere((x) => x == null),
                  )
                : null
          ]..removeWhere((x) => x == null))(
        swidClass: _removeNonEmitCandidates(swidClass: swidClass),
        unMergedSwidClassWithInterfaceReferences: _removeNonEmitCandidates(
          swidClass: rewriteClassReferencesToInterfaceReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))
              .when(
            fromSwidInterface: (_) => null,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
        ),
        swidClassWithInterfaceReferences: SwidClass.mergeSuperClasses(
          swidClass: _removeNonEmitCandidates(
            swidClass: rewriteClassReferencesToInterfaceReferences(
                    swidType: SwidType.fromSwidClass(swidClass: swidClass))
                .when(
              fromSwidInterface: (_) => null,
              fromSwidClass: (val) => val,
              fromSwidDefaultFormalParameter: (_) => null,
              fromSwidFunctionType: (_) => null,
            ),
          ),
        ),
      );
}

SwidClass _removeNonEmitCandidates({@required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        methods: swidClass.methods
            .where((x) => methodIsEmitCandidate(swidFunctionType: x))
            .toList(),
        extendedClass: swidClass.extendedClass != null
            ? _removeNonEmitCandidates(swidClass: swidClass.extendedClass)
            : null,
        implementedClasses: swidClass.implementedClasses
            .map((x) => _removeNonEmitCandidates(swidClass: x))
            .toList());
