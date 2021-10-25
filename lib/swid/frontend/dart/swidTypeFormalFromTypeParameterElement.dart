import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

SwidTypeFormal swidTypeFormalFromTypeParameterElement({
  required final TypeParameterElement typeParameterElement,
}) =>
    SwidTypeFormal(
      value: SwidTypeFormalValue.fromString(
        string: typeParameterElement.name,
      ),
      swidReferenceDeclarationKind:
          SwidReferenceDeclarationKind.typeParameterType,
      swidTypeFormalBound: null,
    );
