import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:meta/meta.dart';

class TsClassMethodInjectionFieldDeclarations {
  final SwidClass swidClass;

  TsClassMethodInjectionFieldDeclarations({@required this.swidClass});

  String toTsSource() => (swidClass.methods.isNotEmpty ?? false)
      ? [
            ...tsClassMethodInjectionCandidates(
                    swidFunctionTypes: swidClass.methods)
                .map((x) =>
                    "    private readonly ${TsClassMethodInjectionFieldName(swidFunctionType: x).toTsSource()}: " +
                    transformFunctionTypeToTs(swidFunctionType: x) +
                    " = undefined as any;")
                .toList()
          ].join("\n") +
          "\n"
      : "";
}
