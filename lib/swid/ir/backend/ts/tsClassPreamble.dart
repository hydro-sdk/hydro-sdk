import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  TsClassPreamble({@required this.swidClass});

  String toTsSource() => ([
        "export class ${swidClass.name}",
        "implements",
        ([
          "I${swidClass.name}",
          swidClass.extendedClass != null
              ? "I${swidClass.extendedClass.name}"
              : null,
          ...swidClass.mixedInClasses.map((x) => "I${x.name}").toList()
        ]..removeWhere((x) => x == null))
            .join(", "),
        "{"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
