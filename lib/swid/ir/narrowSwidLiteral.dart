import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:meta/meta.dart';

SwidLiteral narrowSwidLiteral({
  @required SwidLiteral swidLiteral,
  @required
      SwidIntegerLiteral Function(SwidIntegerLiteral) onSwidIntegerLiteral,
  @required SwidStringLiteral Function(SwidStringLiteral) onSwidStringLiteral,
  @required
      SwidStaticConstFunctionInvocation Function(
              SwidStaticConstFunctionInvocation)
          onSwidStaticConstFunctionInvocation,
}) {
  if (swidLiteral is SwidIntegerLiteral) {
    var res = onSwidIntegerLiteral(swidLiteral);
    if (res != null) {
      return res;
    }
  } else if (swidLiteral is SwidStringLiteral) {
    var res = onSwidStringLiteral(swidLiteral);
    if (res != null) {
      return res;
    }
  } else if (swidLiteral is SwidStaticConstFunctionInvocation) {
    var res = onSwidStaticConstFunctionInvocation(swidLiteral);
    if (res != null) {
      return res;
    }
  }
  return null;
}
