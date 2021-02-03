import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart' show TypeParameterElement;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';

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

  factory SwidTypeFormalValue.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalValueFromJson(json);
}

extension SwidTypeFormalValueMethods on SwidTypeFormalValue {
  String get name => when(
        fromString: (val) => val,
        fromSwidClass: (val) => val.name,
        fromSwidInterface: (val) => val.name,
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
}
