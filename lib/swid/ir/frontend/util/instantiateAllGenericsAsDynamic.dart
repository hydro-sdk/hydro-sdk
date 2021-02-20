import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/dartPrimitives.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/instantiateAllGenericsAs.dart';

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
