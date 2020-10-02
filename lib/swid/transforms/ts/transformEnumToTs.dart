import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:meta/meta.dart';

String transformEnumToTs({@required SwidEnum swidEnum}) {
  List<String> children = swidEnum.children.map((x) => "    ${x},").toList();
  return [
    "export ${swidEnum.identifier} {",
    ...children,
    "}",
    "\n"
  ].join("\n");
}
