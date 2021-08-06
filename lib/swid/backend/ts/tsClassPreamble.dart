import 'package:hydro_sdk/swid/backend/ts/tsSuperClassClause.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  const TsClassPreamble({
    required this.swidClass,
  });

  String toTsSource() => ([
        "export class ${swidClass.name}",
        transformTypeFormalsToTs(swidTypeFormals: swidClass.typeFormals),
        TsSuperClassClause(swidClass: swidClass, clauseKeyword: "implements")
            .toTsSource(),
        "{"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
