import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/type.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

SwidTypeFormal swidTypeFormalFromTypeParameter({
  required final TypeParameter typeParameter,
  required final bool buildElements,
}) =>
    SwidTypeFormal(
      value: SwidTypeFormalValue.fromString(
        string: typeParameter.name.name,
      ),
      swidReferenceDeclarationKind:
          SwidReferenceDeclarationKind.typeParameterType,
      swidTypeFormalBound: typeParameter.bound != null &&
              typeParameter.bound is TypeName &&
              typeParameter.bound!.type != null &&
              typeParameter.bound!.type is InterfaceType
          ? SwidTypeFormalBound.fromSwidInterface(
              swidInterface: swidInterfaceFromInterface(
                interfaceType: typeParameter.bound!.type as InterfaceType,
                buildElements: buildElements,
              ),
            )
          : null,
    );
