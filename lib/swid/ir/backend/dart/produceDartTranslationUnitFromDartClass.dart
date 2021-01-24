import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

DartTranslationUnit produceDartTranslationUnitFromSwidClass({
  @required SwidClass swidClass,
  @required String baseFileName,
  @required String path,
  @required List<String> prefixPaths,
}) =>
    (({
      @required SwidClass swidClass,
    }) =>
        swidClass.originalPackagePath != "dart:_internal" &&
                (requiresDartBinding(swidClass: swidClass) ||
                    swidClass.isConstructible())
            ? DartTranslationUnit(
                path: prefixPaths.join(p.separator) + p.separator + path,
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
                          rtManagedClassDeclaration: RTManagedClassDeclaration(
                              swidClass: SwidClass.mergeSuperClasses(
                                  swidClass: swidClass)),
                        )
                      : null,
                  DartIr.fromLoadNamepsaceSymbolDeclaration(
                      loadNamespaceSymbolDeclaration:
                          LoadNamespaceSymbolDeclaration(swidClass: swidClass))
                ]..removeWhere((x) => x == null),
              )
            : null)(
      swidClass: removeNonEmitCandidates(swidClass: swidClass),
    );
