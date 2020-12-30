import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  TsClassPreamble({@required this.swidClass});

  String toTsSource() => ([
        "export class ${swidClass.name}",
        transformTypeFormalsToTs(swidTypeFormals: swidClass.typeFormals),
        swidClass.methods.isNotEmpty ||
                swidClass.instanceFieldDeclarations.isNotEmpty
            ? "implements I${swidClass.name}" +
                transformTypeFormalsToTs(swidTypeFormals: swidClass.typeFormals)
            : "",
        "{"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
