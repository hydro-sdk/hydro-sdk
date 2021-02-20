import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

part 'swidTypeFormal.freezed.dart';
part 'swidTypeFormal.g.dart';

@freezed
abstract class SwidTypeFormalValue with _$SwidTypeFormalValue {
  factory SwidTypeFormalValue.fromString({@required String string}) =
      _$FromString;

  factory SwidTypeFormalValue.fromSwidClass({@required SwidClass swidClass}) =
      _$FromSwidClass;

  factory SwidTypeFormalValue.fromSwidInterface(
      {@required SwidInterface swidInterface}) = _$FromSwidInterface;

  factory SwidTypeFormalValue.fromSwidFunctionType(
      {@required SwidFunctionType swidFunctionType}) = _$FromSwidFunctionType;

  factory SwidTypeFormalValue.clone({
    @required SwidTypeFormalValue swidTypeFormalValue,
  }) =>
      swidTypeFormalValue.when(
        fromString: (val) => SwidTypeFormalValue.fromString(string: val),
        fromSwidClass: (val) => SwidTypeFormalValue.fromSwidClass(
          swidClass: SwidClass.clone(swidClass: val),
        ),
        fromSwidInterface: (val) => SwidTypeFormalValue.fromSwidInterface(
          swidInterface: SwidInterface.clone(swidType: val),
        ),
        fromSwidFunctionType: (val) => SwidTypeFormalValue.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType.clone(
            swidFunctionType: val,
          ),
        ),
      );

  factory SwidTypeFormalValue.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalValueFromJson(json);
}

extension SwidTypeFormalValueMethods on SwidTypeFormalValue {
  String get name => when(
        fromString: (val) => val,
        fromSwidClass: (val) => val.name,
        fromSwidInterface: (val) => val.name,
        fromSwidFunctionType: (val) => val.name,
      );

  String get displayName => when(
        fromString: (val) => val,
        fromSwidClass: (val) =>
            SwidType.fromSwidClass(swidClass: val).displayName,
        fromSwidInterface: (val) =>
            SwidType.fromSwidInterface(swidInterface: val).displayName,
        fromSwidFunctionType: (val) =>
            SwidType.fromSwidFunctionType(swidFunctionType: val).displayName,
      );
}

@freezed
abstract class SwidTypeFormal with _$SwidTypeFormal {
  factory SwidTypeFormal({
    @required SwidTypeFormalValue value,
    @required SwidReferenceDeclarationKind swidReferenceDeclarationKind,
  }) = _$Data;

  factory SwidTypeFormal.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalFromJson(json);

  factory SwidTypeFormal.fromTypeParameterElement(
          {@required TypeParameterElement typeParameterElement}) =>
      SwidTypeFormal(
        value:
            SwidTypeFormalValue.fromString(string: typeParameterElement.name),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      );

  factory SwidTypeFormal.fromTypeParameter(
          {@required TypeParameter typeParameter}) =>
      SwidTypeFormal(
          value:
              SwidTypeFormalValue.fromString(string: typeParameter.name.name),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType);

  factory SwidTypeFormal.clone({
    @required SwidTypeFormal swidTypeFormal,
    SwidTypeFormalValue value,
    SwidReferenceDeclarationKind swidReferenceDeclarationKind,
  }) =>
      SwidTypeFormal(
        value: value ??
            SwidTypeFormalValue.clone(
                swidTypeFormalValue: swidTypeFormal.value),
        swidReferenceDeclarationKind: swidReferenceDeclarationKind ??
            swidTypeFormal.swidReferenceDeclarationKind,
      );
}
