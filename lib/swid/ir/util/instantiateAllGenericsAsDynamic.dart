import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAs.dart';

SwidType instantiateAllGenericsAsDynamic({
  required final SwidType swidType,
  final bool instantiateNormalParameterTypes = false,
}) =>
    instantiateAllGenericsAs(
      swidType: swidType,
      instantiateNormalParameterTypes: instantiateNormalParameterTypes,
      instantiatedGeneric: SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
        swidInstantiableGeneric: SwidInstantiableGeneric.fromSwidInterface(
          swidInterface: dartDynamic,
        ),
      ),
    );
