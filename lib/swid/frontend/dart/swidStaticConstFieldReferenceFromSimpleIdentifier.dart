import 'package:analyzer/dart/ast/ast.dart' show SimpleIdentifier;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';

SwidStaticConstFieldReference swidStaticConstFieldReferenceFromSimpleIdentifier(
        {@required SimpleIdentifier simpleIdentifier}) =>
    SwidStaticConstFieldReference(name: simpleIdentifier.name);
