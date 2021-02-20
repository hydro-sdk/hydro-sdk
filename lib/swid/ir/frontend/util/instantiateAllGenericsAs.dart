import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/instantiateGeneric.dart';

SwidType instantiateAllGenericsAs({
  @required SwidType swidType,
  @required SwidInstantiatedGeneric instantiatedGeneric,
}) =>
    swidType.when(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
        swidInterface: val,
      ),
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: val.typeFormals.fold<SwidClass>(
          val,
          (previousValue, element) => element.swidReferenceDeclarationKind ==
                  SwidReferenceDeclarationKind.typeParameterType
              ? instantiateGeneric(
                  swidType: SwidType.fromSwidClass(swidClass: previousValue),
                  genericInstantiator: SwidGenericInstantiator(
                    name: element.value.name,
                    instantiatedGeneric: instantiatedGeneric,
                  ),
                ).when(
                  fromSwidInterface: (_) => null,
                  fromSwidClass: (val) => val,
                  fromSwidDefaultFormalParameter: (_) => null,
                  fromSwidFunctionType: (_) => null,
                )
              : SwidClass.clone(
                  swidClass: previousValue,
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
                  fromSwidInterface: (_) => null,
                  fromSwidClass: (_) => null,
                  fromSwidDefaultFormalParameter: (_) => null,
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
