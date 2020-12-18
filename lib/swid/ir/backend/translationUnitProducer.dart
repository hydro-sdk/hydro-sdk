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
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:path/path.dart' as p;
import 'package:meta/meta.dart';

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
      ((SwidClass swidClass) => [
            TsTranslationUnit(
                path: tsPrefixPaths.join(p.separator) + p.separator + path,
                fileName: "$baseFileName.ts",
                ir: [
                  TsIr.fromTsLinebreak(tsLinebreak: TsLinebreak()),
                  TsIr.fromTsClassVmDeclaration(
                      tsClassVmDeclaration:
                          TsClassVmDeclaration(swidClass: swidClass)),
                  TsIr.fromTsFunctionDefaultNamedProps(
                    tsFunctionDefaultNamedProps: TsFunctionDefaultNamedProps(
                        swidFunctionType: SwidFunctionType.clone(
                            swidFunctionType: swidClass.constructorType,
                            name: swidClass.name)),
                  ),
                  ...([
                    ...swidClass.methods,
                    ...swidClass.factoryConstructors,
                    ...swidClass.staticMethods,
                  ].map((x) => TsIr.fromTsFunctionDefaultNamedProps(
                      tsFunctionDefaultNamedProps:
                          TsFunctionDefaultNamedProps(swidFunctionType: x)))),
                  TsIr.fromTsClassPreamble(
                      tsClassPreamble: TsClassPreamble(swidClass: swidClass)),
                  TsIr.fromTsClassStaticConstFieldDeclarations(
                      tsClassStaticConstFieldDeclarations:
                          TsClassStaticConstFieldDeclarations(
                              swidClass: swidClass)),
                  TsIr.fromTsClassInstanceFieldDeclarations(
                      tsClassInstanceFieldDeclarations:
                          TsClassInstanceFieldDeclarations(
                              swidClass: swidClass)),
                  TsIr.fromTsClassConstructorImplementation(
                      tsClassConstructorImplementation:
                          TsClassConstructorImplementation(
                              swidClass: swidClass)),
                  ...([
                    ...[
                      ...swidClass.factoryConstructors,
                      ...swidClass.staticMethods,
                    ]
                        .map((x) => TsIr.fromTsClassStaticMethodImplementation(
                            tsClassStaticMethodImplementation:
                                TsClassStaticMethodImplementation(
                                    swidClass: swidClass, swidFunctionType: x)))
                        .toList()
                  ]),
                  TsIr.fromTsClassMethodInjectionFieldDeclarations(
                      tsClassMethodInjectionFieldDeclarations:
                          TsClassMethodInjectionFieldDeclarations(
                              swidClass: swidClass)),
                  TsIr.fromTsClassMethodDeclarations(
                      tsClassMethodDeclarations:
                          TsClassMethodDeclarations(swidClass: swidClass)),
                  TsIr.fromTsClassPostamble(
                      tsClassPostamble: TsClassPostamble(swidClass: swidClass))
                ]),
            requiresDartBinding(swidClass: swidClass)
                ? DartTranslationUnit(
                    path:
                        dartPrefixPaths.join(p.separator) + p.separator + path,
                    fileName: "$baseFileName.dart",
                    ir: [
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      DartIr.fromVMManagedClassDeclaration(
                          vmManagedClassDeclaration:
                              VMManagedClassDeclaration(swidClass: swidClass)),
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      !swidClass.isPureAbstract()
                          ? DartIr.fromRTManagedClassDeclaration(
                              rtManagedClassDeclaration:
                                  RTManagedClassDeclaration(
                                      swidClass: swidClass),
                            )
                          : null,
                      DartIr.fromLoadNamepsaceSymbolDeclaration(
                          loadNamespaceSymbolDeclaration:
                              LoadNamespaceSymbolDeclaration(
                                  swidClass: swidClass))
                    ]..removeWhere((x) => x == null),
                  )
                : null
          ]
            ..removeWhere((x) => x == null))(SwidClass.clone(
          swidClass: swidClass,
          methods: swidClass.methods
              .where((x) => methodIsEmitCandidate(swidFunctionType: x))
              .toList()));
}
