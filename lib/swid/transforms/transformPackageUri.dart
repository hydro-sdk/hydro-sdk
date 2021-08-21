import 'package:path/path.dart' as path;

String transformPackageUri({required final String packageUri}) {
  var parts = packageUri.split(path.separator);

  parts = parts
      .map((x) => x.replaceAll(RegExp("package\\:"), ""))
      .map((x) => x.replaceAll(RegExp("dart\\:"), "dart${path.separator}"))
      .toList()
        ..removeWhere((x) => x == "src" || RegExp("\\.dart").hasMatch(x));
  return parts.join(path.separator);
}
