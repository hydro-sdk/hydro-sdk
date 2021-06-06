

import 'package:hydro_sdk/swid/backend/util/methodIsEmitCandidate.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';

SwidClass removeNonEmitCandidates({required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        methods: swidClass.methods
            .where((x) => methodIsEmitCandidate(swidFunctionType: x,))
            .toList(),
        extendedClass: swidClass.extendedClass != null
            ? removeNonEmitCandidates(swidClass: swidClass.extendedClass!)
            : null,
        implementedClasses: swidClass.implementedClasses
            .map((x) => removeNonEmitCandidates(swidClass: x,))
            .toList());
