import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/dartPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAs.dart';

SwidType instantiateAllGenericsAsDynamic({
  @required SwidType swidType,
}) =>
    instantiateAllGenericsAs(
      swidType: swidType,
      instantiatedGeneric: SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
        swidInstantiableGeneric: SwidInstantiableGeneric.fromSwidInterface(
          swidInterface: DartPrimitives.dartDynamic,
        ),
      ),
    );
