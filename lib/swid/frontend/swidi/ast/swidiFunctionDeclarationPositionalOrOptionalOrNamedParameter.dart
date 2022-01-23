import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.freezed.dart';

@freezed
class SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
    with
        _$SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter,
        HashKeyMixin<
            SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>,
        HashComparableMixin<
            SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter> {
  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter._();

  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter._clone({
    required final SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
        swidiPositionalOrOptionalOrNamedParameter,
  }) =>
      swidiPositionalOrOptionalOrNamedParameter.when(
        fromSwidiFunctionDeclarationPositionalParameter: (val) =>
            SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionDeclarationPositionalParameter(
          positionalParameter: val.clone(),
        ),
        fromSwidiFunctionDeclarationOptionalParameter: (val) =>
            SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionDeclarationOptionalParameter(
          optionalParameter: val.clone(),
        ),
        fromSwidiFunctionDeclarationNamedParameter: (val) =>
            SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionDeclarationNamedParameter(
          namedParameter: val.clone(),
        ),
      );

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidiFunctionDeclarationPositionalParameter: (val) =>
            val.hashKey.hashableParts,
        fromSwidiFunctionDeclarationOptionalParameter: (val) =>
            val.hashKey.hashableParts,
        fromSwidiFunctionDeclarationNamedParameter: (val) =>
            val.hashKey.hashableParts,
      );

  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.fromSwidiFunctionDeclarationPositionalParameter({
    required final SwidiFunctionDeclarationPositionalParameter
        positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.fromSwidiFunctionDeclarationOptionalParameter({
    required final SwidiFunctionDeclarationOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;

  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.fromSwidiFunctionDeclarationNamedParameter({
    required final SwidiFunctionDeclarationNamedParameter namedParameter,
  }) = _$SwidiPositionalOrOptionalOrNamedParameterFromSwidiNamedParameter;

  @override
  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter clone() =>
      SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter._clone(
        swidiPositionalOrOptionalOrNamedParameter: this,
      );
}
