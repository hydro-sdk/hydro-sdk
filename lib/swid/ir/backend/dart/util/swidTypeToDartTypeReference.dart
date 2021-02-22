import 'package:code_builder/code_builder.dart' show TypeReference;
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';

TypeReference swidTypeToDartTypeReference({@required SwidType swidType}) =>
    TypeReference((t) => t..symbol = swidType.displayName);
