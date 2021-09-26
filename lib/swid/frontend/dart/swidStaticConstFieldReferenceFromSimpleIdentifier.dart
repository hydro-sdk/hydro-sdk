import 'package:analyzer/dart/ast/ast.dart' show SimpleIdentifier;

import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';

SwidStaticConstFieldReference swidStaticConstFieldReferenceFromSimpleIdentifier(
        {required final SimpleIdentifier simpleIdentifier}) =>
    SwidStaticConstFieldReference(name: simpleIdentifier.name);
