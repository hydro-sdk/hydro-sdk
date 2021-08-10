import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';

T narrowSwidInterfaceByReferenceDeclaration<T>({
  required final SwidInterface swidInterface,
  required final T Function(SwidInterface) onPrimitive,
  required final T Function(SwidInterface) onClass,
  required final T Function(SwidInterface) onEnum,
  required final T Function(SwidInterface) onVoid,
  required final T Function(SwidInterface) onTypeParameter,
  required final T Function(SwidInterface) onDynamic,
  required final T Function(SwidInterface) onUnknown,
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
                            : onUnknown(swidInterface);
