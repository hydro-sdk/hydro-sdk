import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:args/args.dart';
import 'package:surveyor/src/analysis.dart';
import 'package:surveyor/src/driver.dart';
import 'package:surveyor/src/visitors.dart';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/source/line_info.dart';
import 'package:path/path.dart' as path;
import 'package:surveyor/src/driver.dart';
import 'package:surveyor/src/visitors.dart';

int dirCount;

Future<void> swid(List<String> args) async {
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
  driver.forceSkipInstall = true;
  driver.showErrors = false;
  driver.resolveUnits = true;
  driver.visitor = SwidVisitor();
  await driver.analyze();
}

class SwidVisitor extends RecursiveAstVisitor
    implements PreAnalysisCallback, PostAnalysisCallback, AstContext {
  int count = 0;
  int contexts = 0;
  String filePath;
  Folder currentFolder;
  LineInfo lineInfo;

  List<String> reports = <String>[];

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    print(node);

    super.visitEnumDeclaration(node);
  }

  @override
  void postAnalysis(SurveyorContext context, DriverCommands cmd) {
    print("postanalysis");
    cmd.continueAnalyzing = true;
    // Reporting done in visitSimpleIdentifier.
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
  void setFilePath(String filePath) {
    print(filePath);
  }

  @override
  void setLineInfo(LineInfo lineInfo) {
    print(lineInfo);
  }
}
