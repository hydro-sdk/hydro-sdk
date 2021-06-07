import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';

SwidClass removePrivateMethods({
  required SwidClass swidClass,
}) =>
    SwidClass.clone(
      swidClass: swidClass,
      methods: swidClass.methods.where((x) => x.name[0] != "_").toList(),
    );
