import 'package:analyzer/dart/ast/ast.dart' show PrefixedIdentifier;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromClassElement.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';

SwidStaticConstPrefixedIdentifier
    swidStaticConstPrefixedIdentifierFromPrefixedIdentifier(
            {@required PrefixedIdentifier prefixedIdentifier}) =>
        SwidStaticConstPrefixedIdentifier(
            prefix: swidInterfaceFromClassElement(
                classElement: prefixedIdentifier.prefix.staticElement),
            staticConstFieldReference:
                SwidStaticConstFieldReference.fromSimpleIdentifier(
                    simpleIdentifier: prefixedIdentifier.identifier));
