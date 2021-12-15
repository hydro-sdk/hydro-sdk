import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

bool requiresDartClassTranslationUnit({
  required final SwidClass swidClass,
  required final ISwarsPipeline pipeline,
}) =>
    swidClass.name[0] != "_" &&
    swidClass.originalPackagePath != "dart:_internal" &&
    (requiresDartBinding(
          pipeline: pipeline,
          swidClass: swidClass,
        ) ||
        swidClass.isConstructible() ||
        swidClass.methods.isNotEmpty ||
        swidClass.instanceFieldDeclarations.isNotEmpty ||
        swidClass.staticConstFieldDeclarations.firstWhereOrNull(
              (x) => pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: swidClass,
                  swidStaticConst: x.value,
                ),
              ),
            ) !=
            null);
