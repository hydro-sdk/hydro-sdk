import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/unsatisfiedTypeParameters.dart';

bool hasUnsatisfiedTypeParameters(
        {@required SwidType swidType,
        SwidClassTypeFormalClosureKind classTypeFormalClosureKind =
            SwidClassTypeFormalClosureKind
                .kNoCloseOverTypeFormalsInStaticMembers}) =>
    unsatisfiedTypeParameters(swidType: swidType).isNotEmpty;
