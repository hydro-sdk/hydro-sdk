import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  TsClassPreamble({@required this.swidClass});

  String toTsSource() => [
        "export class ${swidClass.name}",
        ...(swidClass.mixedInClasses.isNotEmpty
            ? [
                "implements",
                swidClass.mixedInClasses.map((x) => x.name).toList().join(", ")
              ]
            : []),
        "{"
      ].join("\n");
}
