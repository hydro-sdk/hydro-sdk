import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';

SwidNullabilitySuffix swidiNullabilitySuffixToSwidNullabilitySuffix({
  required final SwidiNullabilitySuffix swidiNullabilitySuffix,
}) =>
    swidiNullabilitySuffix == SwidiNullabilitySuffix.question
        ? SwidNullabilitySuffix.question
        : SwidNullabilitySuffix.none;
