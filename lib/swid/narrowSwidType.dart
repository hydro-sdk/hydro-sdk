import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:meta/meta.dart';

SwidType narrowSwidType({
  @required SwidType swidType,
  @required SwidFunctionType Function(SwidFunctionType) onSwidFunctionType,
  @required SwidType Function(SwidType) onSwidType,
}) {
  if (swidType is SwidFunctionType) {
    var res = onSwidFunctionType(swidType);
    if (res != null) {
      return res;
    }
  } else if (swidType is SwidType) {
    var res = onSwidType(swidType);
    if (res != null) {
      return res;
    }
  }

  return null;
}
