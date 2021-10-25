import 'package:hydro_sdk/swid/frontend/swidi/ast/iTypeFormals.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

List<SwidTypeFormal> swidiTypeFormalsToSwidTypeFormals<T extends ITypeFormals>({
  required final T type,
}) =>
    type.typeFormals
        .map(
          (x) => SwidTypeFormal(
            value: SwidTypeFormalValue.fromSwidInterface(
              swidInterface: SwidInterface(
                name: x.name,
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
            swidTypeFormalBound: null,
          ),
        )
        .toList();
