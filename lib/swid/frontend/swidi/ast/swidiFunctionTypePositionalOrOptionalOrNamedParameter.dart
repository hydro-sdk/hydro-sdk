import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiFunctionTypePositionalOrOptionalOrNamedParameter.freezed.dart';

@freezed
class SwidiFunctionTypePositionalOrOptionalOrNamedParameter
    with
        _$SwidiFunctionTypePositionalOrOptionalOrNamedParameter,
        HashKeyMixin<SwidiFunctionTypePositionalOrOptionalOrNamedParameter>,
        HashComparableMixin<
            SwidiFunctionTypePositionalOrOptionalOrNamedParameter> {
  SwidiFunctionTypePositionalOrOptionalOrNamedParameter._();

  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameter._clone({
    required final SwidiFunctionTypePositionalOrOptionalOrNamedParameter
        swidiPositionalOrOptionalOrNamedParameter,
  }) =>
      swidiPositionalOrOptionalOrNamedParameter.when(
        fromSwidiFunctionTypePositionalParameter: (val) =>
            SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionTypePositionalParameter(
          positionalParameter: val.clone(),
        ),
        fromSwidiFunctionTypeOptionalParameter: (val) =>
            SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionTypeOptionalParameter(
          optionalParameter: val.clone(),
        ),
        fromSwidiFunctionTypeNamedParameter: (val) =>
            SwidiFunctionTypePositionalOrOptionalOrNamedParameter
                .fromSwidiFunctionTypeNamedParameter(
          namedParameter: val.clone(),
        ),
      );

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidiFunctionTypePositionalParameter: (val) =>
            val.hashKey.hashableParts,
        fromSwidiFunctionTypeOptionalParameter: (val) =>
            val.hashKey.hashableParts,
        fromSwidiFunctionTypeNamedParameter: (val) => val.hashKey.hashableParts,
      );

  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameter.fromSwidiFunctionTypePositionalParameter({
    required final SwidiFunctionTypePositionalParameter positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameter.fromSwidiFunctionTypeOptionalParameter({
    required final SwidiFunctionTypeOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;

  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameter.fromSwidiFunctionTypeNamedParameter({
    required final SwidiFunctionTypeNamedParameter namedParameter,
  }) = _$SwidiPositionalOrOptionalOrNamedParameterFromSwidiNamedParameter;

  @override
  SwidiFunctionTypePositionalOrOptionalOrNamedParameter clone() =>
      SwidiFunctionTypePositionalOrOptionalOrNamedParameter._clone(
        swidiPositionalOrOptionalOrNamedParameter: this,
      );
}
