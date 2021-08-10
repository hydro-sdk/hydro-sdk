import 'package:analyzer/dart/ast/ast.dart' show PrefixedIdentifier;
import 'package:analyzer/dart/element/element.dart' show ClassElement;

import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromClassElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFieldReferenceFromSimpleIdentifier.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';

SwidStaticConstPrefixedIdentifier
    swidStaticConstPrefixedIdentifierFromPrefixedIdentifier({
  required final PrefixedIdentifier prefixedIdentifier,
}) =>
        SwidStaticConstPrefixedIdentifier(
          prefix: prefixedIdentifier.prefix.staticElement is ClassElement
              ? swidInterfaceFromClassElement(
                  classElement:
                      prefixedIdentifier.prefix.staticElement as ClassElement,
                )
              : dartUnknownInterface,
          staticConstFieldReference:
              swidStaticConstFieldReferenceFromSimpleIdentifier(
            simpleIdentifier: prefixedIdentifier.identifier,
          ),
        );
