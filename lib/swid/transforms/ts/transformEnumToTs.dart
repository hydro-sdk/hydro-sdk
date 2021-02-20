import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidEnum.dart';

String transformEnumToTs({@required SwidEnum swidEnum}) {
  List<String> children = swidEnum.children.map((x) => "    ${x},").toList();
  return ["export enum ${swidEnum.identifier} {", ...children, "}", "\n"]
      .join("\n");
}
