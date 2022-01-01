import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;
import 'package:analyzer/dart/element/type.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

SwidTypeFormal swidTypeFormalFromTypeParameterElement({
  required final TypeParameterElement typeParameterElement,
  required final bool buildElements,
}) =>
    SwidTypeFormal(
      value: SwidTypeFormalValue.fromString(
        string: typeParameterElement.name,
      ),
      swidReferenceDeclarationKind:
          SwidReferenceDeclarationKind.typeParameterType,
      swidTypeFormalBound: typeParameterElement.bound != null &&
              typeParameterElement.bound is InterfaceType
          ? SwidTypeFormalBound.fromSwidInterface(
              swidInterface: swidInterfaceFromInterface(
                interfaceType: typeParameterElement.bound! as InterfaceType,
                buildElements: buildElements,
              ),
            )
          : null,
    );
