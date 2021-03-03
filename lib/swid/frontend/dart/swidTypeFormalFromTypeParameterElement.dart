import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

SwidTypeFormal swidTypeFormalFromTypeParameterElement(
        {@required TypeParameterElement typeParameterElement}) =>
    SwidTypeFormal(
      value: SwidTypeFormalValue.fromString(string: typeParameterElement.name),
      swidReferenceDeclarationKind:
          SwidReferenceDeclarationKind.typeParameterType,
    );
