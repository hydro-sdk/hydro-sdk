import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/source/line_info.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:path/path.dart' as path;
import 'package:surveyor/src/driver.dart';
import 'package:surveyor/src/visitors.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';

int dirCount;

Future<SwidVisitor> swid(List<String> args) async {
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
  driver.visitor = SwidVisitor();
  await driver.analyze();

  return driver.visitor;
}

class SwidVisitor extends RecursiveAstVisitor
    implements PreAnalysisCallback, PostAnalysisCallback, AstContext {
  int count = 0;
  int contexts = 0;
  String filePath;
  Folder currentFolder;
  LineInfo lineInfo;

  List<String> reports = <String>[];
  List<SwidEnum> enums = [];
  List<SwidClass> classes = [];

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    DeclaredSimpleIdentifier identifier =
        node.childEntities.firstWhere((x) => x is DeclaredSimpleIdentifier);
    if (identifier.name[0] != "_") {
      List<EnumConstantDeclarationImpl> declarations = node.childEntities
          .where((x) => x is EnumConstantDeclarationImpl)
          .toList()
          .cast<EnumConstantDeclarationImpl>();
      enums.add(SwidEnum(
          originalPackagePath: (node.parent.root as CompilationUnit)
              .declaredElement
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
    if (node.nativeClause == null && node.name.name[0] != "_") {
      var res = SwidClass.fromClassOrMixinDeclaration(
        classOrMixinDeclaration: node,
        isMixin: false,
      );

      if (res != null) {
        res = SwidClass.clone(
            swidClass: res,
            swidDeclarationModifiers:
                SwidDeclarationModifiers.fromClassDeclaration(
                    classDeclaration: node));
        classes.add(res);
      }
    }

    if (node.name.name == "IconData") {
      print(node.name.name);
      File("test/swid/res/IconData.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "IconDataProperty") {
      print(node.name.name);
      File("test/swid/res/IconDataProperty.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Icons") {
      print(node.name.name);
      File("test/swid/res/Icons.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "CupertinoIcons") {
      print(node.name.name);
      File("test/swid/res/CupertinoIcons.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "IconData") {
      print(node.name.name);
      File("test/swid/res/IconData.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "DiagnosticsNode") {
      print(node.name.name);
      File("test/swid/res/DiagnosticsNode.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "DiagnosticsSerializationDelegate") {
      print(node.name.name);
      File("test/swid/res/DiagnosticsSerializationDelegate.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "DiagnosticPropertiesBuilder") {
      print(node.name.name);
      File("test/swid/res/DiagnosticPropertiesBuilder.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "DiagnosticableTree") {
      print(node.name.name);
      File("test/swid/res/DiagnosticableTree.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Key") {
      print(node.name.name);
      File("test/swid/res/Key.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Size") {
      print(node.name.name);
      File("test/swid/res/Size.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Offset") {
      print(node.name.name);
      File("test/swid/res/Offset.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    super.visitClassDeclaration(node);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    if (node.name.name == "Diagnosticable") {
      print(node.name.name);

      var res = SwidClass.fromClassOrMixinDeclaration(
          classOrMixinDeclaration: node, isMixin: true);

      if (res != null) {
        classes.add(res);
      }

      File("test/swid/res/Diagnosticable.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    super.visitMixinDeclaration(node);
  }

  @override
  void postAnalysis(SurveyorContext context, DriverCommands cmd) {
    cmd.continueAnalyzing = true;
  }

  @override
  void preAnalysis(SurveyorContext context,
      {bool subDir, DriverCommands commandCallback}) {
    if (subDir) {
      ++dirCount;
    }
    var contextRoot = context.analysisContext.contextRoot;
    currentFolder = contextRoot.root;
    var dirName = path.basename(contextRoot.root.path);

    print("Analyzing '$dirName' • [${++count}/$dirCount]...");
  }

  @override
  void setFilePath(String filePath) {}

  @override
  void setLineInfo(LineInfo lineInfo) {}
}
