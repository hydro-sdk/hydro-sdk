import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsClassMethodDeclarations {
  final SwidClass swidClass;

  TsClassMethodDeclarations({@required this.swidClass});

  String toTsSource() => (swidClass.methods.isNotEmpty ?? false)
      ? [
            ...tsClassMethodInjectionCandidates(
                    swidFunctionTypes: swidClass.methods)
                .map((x) =>
                    "public ${x.name}" +
                    transformTypeDeclarationToTs(
                        emitTrailingReturnType: false,
                        emitDefaultFormalsAsOptionalNamed: true,
                        swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: x)) +
                    " {\n" +
                    "    return " +
                    TsFunctionSelfBindingInvocation(
                      functionReference: "this." +
                          TsClassMethodInjectionFieldName(swidFunctionType: x)
                              .toTsSource(),
                      swidFunctionType: x,
                    ).toTsSource() +
                    "\n}")
          ].join("\n") +
          "\n"
      : "";
}
