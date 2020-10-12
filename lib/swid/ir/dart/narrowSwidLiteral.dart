import 'package:hydro_sdk/swid/ir/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';

T narrowSwidLiteral<T>({
  @required SwidLiteral swidLiteral,
  @required T Function(SwidIntegerLiteral) onSwidIntegerLiteral,
  @required T Function(SwidStringLiteral) onSwidStringLiteral,
  @required T Function(SwidBooleanLiteral) onSwidBooleanLiteral,
  @required
      T Function(SwidStaticConstFunctionInvocation)
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
  } else if (swidLiteral is SwidBooleanLiteral) {
    var res = onSwidBooleanLiteral(swidLiteral);
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
