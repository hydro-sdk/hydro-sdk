import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isPrimitive.dart';

T narrowSwidInterfaceByReferenceDeclaration<T>({
  @required SwidInterface swidInterface,
  @required T Function(SwidInterface) onPrimitive,
  @required T Function(SwidInterface) onClass,
  @required T Function(SwidInterface) onEnum,
  @required T Function(SwidInterface) onVoid,
  @required T Function(SwidInterface) onTypeParameter,
  @required T Function(SwidInterface) onDynamic,
}) =>
    swidInterface.referenceDeclarationKind ==
            SwidReferenceDeclarationKind.voidType
        ? onVoid(swidInterface)
        : swidInterface.referenceDeclarationKind ==
                    SwidReferenceDeclarationKind.classElement &&
                isPrimitive(
                    swidType: SwidType.fromSwidInterface(
                        swidInterface: swidInterface))
            ? onPrimitive(swidInterface)
            : swidInterface.referenceDeclarationKind ==
                        SwidReferenceDeclarationKind.classElement &&
                    !isPrimitive(
                        swidType: SwidType.fromSwidInterface(
                            swidInterface: swidInterface))
                ? onClass(swidInterface)
                : swidInterface.referenceDeclarationKind ==
                        SwidReferenceDeclarationKind.enumElement
                    ? onEnum(swidInterface)
                    : swidInterface.referenceDeclarationKind ==
                            SwidReferenceDeclarationKind.typeParameterType
                        ? onTypeParameter(swidInterface)
                        : swidInterface.referenceDeclarationKind ==
                                SwidReferenceDeclarationKind.dynamicType
                            ? onDynamic(swidInterface)
                            : null;
