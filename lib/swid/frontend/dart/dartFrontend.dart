import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/source/line_info.dart';
import 'package:analyzer/src/dart/ast/ast.dart';

import 'package:hydro_sdk/swid/frontend/dart/dartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/surveyor/driver.dart';
import 'package:hydro_sdk/swid/frontend/dart/surveyor/visitors.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidClassFromDartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDeclarationModifiersFromClassDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidTopLevelStaticConstFieldDeclarationFromTopLevelVariableDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';

class SwidDartFrontend extends SwidFrontend {
  final List<String> inputs;

  const SwidDartFrontend({
    required final this.inputs,
  }) : super(
          inputs: inputs,
        );

  Future<List<SwidIr>> produceIr() async {
    int dirCount;
    List<String> args = inputs;
    if (args.length == 1) {
      var dir = args[0];
      if (!File('$dir/pubspec.yaml').existsSync()) {
        print("Recursing into '$dir'...");
        args = Directory(dir).listSync().map((f) => f.path).toList()..sort();
        dirCount = args.length;
        print('(Found $dirCount subdirectories.)');
      }
    }

    var driver = Driver.forArgs(args);
    driver.excludedPaths = ["test", "sdk_ext"];
    driver.forceSkipInstall = false;
    driver.showErrors = false;
    driver.resolveUnits = true;
    driver.visitor = _SwidVisitor();
    await driver.analyze();

    return [
      ...((driver.visitor as _SwidVisitor)
          .enums
          .map((x) => SwidIr.fromSwidEnum(
                swidEnum: x,
              ))
          .toList()),
      ...((driver.visitor as _SwidVisitor)
          .classes
          .map((x) => SwidIr.fromSwidClass(
                swidClass: x,
              ))
          .toList()),
      ...((driver.visitor as _SwidVisitor)
          .topLevelStaticConstFieldDeclarations
          .map((x) => SwidIr.fromSwidTopLevelStaticConstFieldDeclaration(
                swidTopLevelStaticConstFieldDeclaration: x,
              ))
          .toList()),
    ];
  }
}

class _SwidVisitor extends RecursiveAstVisitor
    implements PreAnalysisCallback, PostAnalysisCallback, AstContext {
  int count = 0;
  int contexts = 0;
  String? filePath;
  Folder? currentFolder;
  LineInfo? lineInfo;

  List<String> reports = <String>[];
  List<SwidEnum> enums = [];
  List<SwidClass> classes = [];
  List<SwidTopLevelStaticConstFieldDeclaration>
      topLevelStaticConstFieldDeclarations = [];

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    DeclaredSimpleIdentifier identifier =
        node.childEntities.firstWhere((x) => x is DeclaredSimpleIdentifier)
            as DeclaredSimpleIdentifier;
    if (identifier.name[0] != "_") {
      List<EnumConstantDeclarationImpl> declarations = node.childEntities
          .where((x) => x is EnumConstantDeclarationImpl)
          .toList()
          .cast<EnumConstantDeclarationImpl>();
      enums.add(SwidEnum(
          originalPackagePath: (node.parent!.root as CompilationUnit)
              .declaredElement!
              .librarySource
              .uri
              .toString(),
          identifier: identifier.name,
          children: declarations.map((x) => x.name.name).toList()));
    }

    super.visitEnumDeclaration(node);
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    if (node.nativeClause == null) {
      var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
        dartClassOrMixinOrClassTypAliasDeclaration:
            DartClassOrMixinOrClassTypAliasDeclaration.fromClassDeclaration(
          classDeclaration: node,
        ),
        buildElements: true,
      );

      res = SwidClass.clone(
        swidClass: res,
        declarationModifiers: swidDeclarationModifiersFromClassDeclaration(
          classDeclaration: node,
        ),
      );
      classes.add(res);
    }

    super.visitClassDeclaration(node);
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
      dartClassOrMixinOrClassTypAliasDeclaration:
          DartClassOrMixinOrClassTypAliasDeclaration.fromClassTypeAlias(
        classTypeAlias: node,
      ),
      buildElements: true,
    );
    classes.add(res);

    return super.visitClassTypeAlias(node);
  }

  @override
  void visitCompilationUnit(CompilationUnit node) {
    topLevelStaticConstFieldDeclarations.addAll(
      node.childEntities
          .whereType<TopLevelVariableDeclaration>()
          .where((x) => x.childEntities
              .whereType<VariableDeclarationList>()
              .first
              .isConst)
          .map((x) =>
              swidTopLevelStaticConstFieldDeclarationFromTopLevelVariableDeclaration(
                topLevelVariableDeclaration: x,
                buildElements: true,
              ))
          .toList(),
    );

    return super.visitCompilationUnit(node);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    if (node.name.name == "Diagnosticable") {
      var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
        dartClassOrMixinOrClassTypAliasDeclaration:
            DartClassOrMixinOrClassTypAliasDeclaration.fromMixinDeclaration(
          mixinDeclaration: node,
        ),
        buildElements: true,
      );

      classes.add(res);
    }

    super.visitMixinDeclaration(node);
  }

  @override
  void postAnalysis(SurveyorContext context, DriverCommands cmd) {
    cmd.continueAnalyzing = true;
  }

  @override
  void preAnalysis(SurveyorContext context,
      {bool? subDir, DriverCommands? commandCallback}) {}

  @override
  void setFilePath(String filePath) {}

  @override
  void setLineInfo(LineInfo lineInfo) {}
}
