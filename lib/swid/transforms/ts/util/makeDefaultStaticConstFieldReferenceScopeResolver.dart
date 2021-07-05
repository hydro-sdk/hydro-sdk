import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

SwidStaticConstFieldReferenceScopeResolver
    makeDefaultStaticConstFieldReferenceScopeResolver({
  required SwidClass? parentClass,
}) =>
        parentClass == null
            ? (_) => ""
            : (staticConstFieldReference) => ((SwidStaticConstFieldDeclaration?
                    swidStaticConstFieldDeclaration) =>
                swidStaticConstFieldDeclaration != null
                    ? "${parentClass.name}.${swidStaticConstFieldDeclaration.name}"
                    : staticConstFieldReference.name)(parentClass
                .staticConstFieldDeclarations
                .firstWhereOrNull(
                    (k) => k.name == staticConstFieldReference.name));
