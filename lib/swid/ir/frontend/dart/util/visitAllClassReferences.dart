import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';

void visitAllClassReferences({
  @required SwidType swidType,
  @required void Function({SwidInterface swidInterface}) onClassReference,
  @required void Function({SwidInterface swidInterface}) onEnumReference,
}) {
  swidType.when(
    fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
      swidInterface: val,
      onPrimitive: (_) => null,
      onClass: (val) {
        onClassReference(swidInterface: val);
        val.typeArguments.forEach((x) => visitAllClassReferences(
              swidType: x,
              onClassReference: onClassReference,
              onEnumReference: onEnumReference,
            ));
      },
      onEnum: (val) => onEnumReference(swidInterface: val),
      onVoid: (_) => null,
      onTypeParameter: (_) => null,
      onDynamic: (_) => null,
    ),
    fromSwidClass: (val) {
      val.constructorType != null
          ? visitAllClassReferences(
              swidType: SwidType.fromSwidFunctionType(
                  swidFunctionType: val.constructorType),
              onClassReference: onClassReference,
              onEnumReference: onEnumReference,
            )
          : null;
      val.factoryConstructors.forEach((x) => visitAllClassReferences(
            swidType: SwidType.fromSwidFunctionType(swidFunctionType: x),
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.staticMethods.forEach((x) => visitAllClassReferences(
            swidType: SwidType.fromSwidFunctionType(swidFunctionType: x),
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.methods.forEach((x) => visitAllClassReferences(
            swidType: SwidType.fromSwidFunctionType(swidFunctionType: x),
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.instanceFieldDeclarations.entries
          .forEach((x) => visitAllClassReferences(
                swidType: x.value,
                onClassReference: onClassReference,
                onEnumReference: onEnumReference,
              ));
      val.extendedClass != null
          ? visitAllClassReferences(
              swidType: SwidType.fromSwidClass(swidClass: val.extendedClass),
              onClassReference: onClassReference,
              onEnumReference: onEnumReference)
          : null;
      val.implementedClasses.forEach((x) => visitAllClassReferences(
            swidType: SwidType.fromSwidClass(swidClass: x),
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.mixedInClasses.forEach((x) => visitAllClassReferences(
            swidType: SwidType.fromSwidClass(swidClass: x),
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
    },
    fromSwidDefaultFormalParameter: (_) => null,
    fromSwidFunctionType: (val) {
      visitAllClassReferences(
        swidType: val.returnType,
        onClassReference: onClassReference,
        onEnumReference: onEnumReference,
      );
      val.normalParameterTypes.forEach((x) => visitAllClassReferences(
            swidType: x,
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.namedParameterTypes.entries.forEach((x) => visitAllClassReferences(
            swidType: x.value,
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
      val.optionalParameterTypes.forEach((x) => visitAllClassReferences(
            swidType: x,
            onClassReference: onClassReference,
            onEnumReference: onEnumReference,
          ));
    },
  );
}
