import 'package:analyzer/dart/ast/ast.dart' show PrefixedIdentifier;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromClassElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFieldReferenceFromSimpleIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';

SwidStaticConstPrefixedIdentifier
    swidStaticConstPrefixedIdentifierFromPrefixedIdentifier(
            {required PrefixedIdentifier prefixedIdentifier}) =>
        SwidStaticConstPrefixedIdentifier(
            prefix: swidInterfaceFromClassElement(
                classElement: prefixedIdentifier.prefix.staticElement as ClassElement),
            staticConstFieldReference:
                swidStaticConstFieldReferenceFromSimpleIdentifier(
                    simpleIdentifier: prefixedIdentifier.identifier));
