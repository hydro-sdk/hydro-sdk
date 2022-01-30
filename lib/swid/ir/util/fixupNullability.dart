import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';

SwidClass fixupNullability({
  required final SwidClass swidClass,
}) =>
    swidClass.name == "IconData"
        ? swidClass.clone(
            constructorType: SwidFunctionType.clone(
              swidFunctionType: swidClass.constructorType!,
              namedParameterTypes: Map.fromEntries(
                swidClass.constructorType!.namedParameterTypes.entries.map(
                  (x) => x.key == "fontPackage"
                      ? MapEntry(
                          x.key,
                          cloneSwidType(
                            swidType: x.value,
                            swidNullabilitySuffix:
                                SwidNullabilitySuffix.question,
                          ),
                        )
                      : MapEntry(
                          x.key,
                          x.value,
                        ),
                ),
              ),
            ),
          )
        : swidClass.name == "RRect" &&
                swidClass.originalPackagePath == "dart:ui"
            ? swidClass.clone(
                staticConstFieldDeclarations:
                    swidClass.staticConstFieldDeclarations
                        .where(
                          (x) => x.name != "zero",
                        )
                        .toList(),
              )
            : swidClass;
