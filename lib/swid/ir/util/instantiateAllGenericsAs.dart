import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateGeneric.dart';

SwidType instantiateAllGenericsAs({
  required SwidType swidType,
  required SwidInstantiatedGeneric instantiatedGeneric,
}) =>
    swidType.when(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
        swidInterface: val,
      ),
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
          swidClass: val.typeFormals.fold<SwidClass>(
            val,
            (previousValue, element) => element.swidReferenceDeclarationKind ==
                    SwidReferenceDeclarationKind.typeParameterType
                ? instantiateGeneric(
                    swidType: SwidType.fromSwidClass(swidClass: previousValue,),
                    genericInstantiator: SwidGenericInstantiator(
                      name: element.value.name,
                      instantiatedGeneric: instantiatedGeneric,
                    ),
                  ).when(
                    fromSwidInterface: (_) => dartUnkownClass,
                    fromSwidClass: (val) => val,
                    fromSwidDefaultFormalParameter: (_) => dartUnkownClass,
                    fromSwidFunctionType: (_) => dartUnkownClass,
                  )
                : SwidClass.clone(
                    swidClass: previousValue,
                  ),
          ),
        ),
      ),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
        swidFunctionType: val.typeFormals.fold<SwidFunctionType>(
          val,
          (previousValue, element) => element.swidReferenceDeclarationKind ==
                  SwidReferenceDeclarationKind.typeParameterType
              ? instantiateGeneric(
                  swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: previousValue),
                  genericInstantiator: SwidGenericInstantiator(
                    name: element.value.name,
                    instantiatedGeneric: instantiatedGeneric,
                  ),
                ).when(
                  fromSwidInterface: (_) => dartUnknownFunction,
                  fromSwidClass: (_) => dartUnknownFunction,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
                  fromSwidFunctionType: (val) => val,
                )
              : SwidFunctionType.clone(
                  swidFunctionType: previousValue,
                ),
        ),
      ),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
        swidDefaultFormalParameter: val,
      ),
    );
