import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:path/path.dart' as p;
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';

String dartBarrelMemberImportPath({
  required final BarrelMember barrelMember,
  required final String packageName,
  required final List<String> prefixPaths,
}) =>
    [
      "package:",
      packageName,
      p.separator,
      prefixPaths.first == "lib"
          ? prefixPaths.skip(1).join(p.separator)
          : prefixPaths.join(p.separator),
      p.separator,
      transformPackageUri(
        packageUri: barrelMember.originalPackagePath,
      ),
      p.separator,
      barrelMember.when(
        fromSwidClass: (val) => transformToCamelCase(
          str: val.name,
        ),
        fromSwidEnum: (val) => transformToCamelCase(
          str: val.identifier,
        ),
        fromBarrelSpec: (val) => val.name,
      ),
      ".dart",
    ].join();
