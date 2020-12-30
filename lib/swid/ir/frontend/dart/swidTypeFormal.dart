import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';

part 'swidTypeFormal.freezed.dart';
part 'swidTypeFormal.g.dart';

@freezed
abstract class SwidTypeFormal with _$SwidTypeFormal {
  factory SwidTypeFormal({
    @required String name,
    @required SwidReferenceDeclarationKind swidReferenceDeclarationKind,
  }) = _$Data;

  factory SwidTypeFormal.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalFromJson(json);

  factory SwidTypeFormal.fromTypeParameterElement(
          {@required TypeParameterElement typeParameterElement}) =>
      SwidTypeFormal(
        name: typeParameterElement.name,
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      );

  factory SwidTypeFormal.fromTypeParameter(
          {@required TypeParameter typeParameter}) =>
      SwidTypeFormal(
          name: typeParameter.name.name,
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType);
}
