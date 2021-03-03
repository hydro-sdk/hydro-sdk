import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/source/line_info.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidClassFromDartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:meta/meta.dart';
import 'package:surveyor/src/driver.dart';
import 'package:surveyor/src/visitors.dart';

import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';

class SwidDartFrontend extends SwidFrontend {
  final List<String> inputs;

  SwidDartFrontend({
    @required this.inputs,
  });

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
          .map((x) => SwidIr.fromSwidEnum(swidEnum: x))
          .toList()),
      ...((driver.visitor as _SwidVisitor)
          .classes
          .map((x) => SwidIr.fromSwidClass(swidClass: x))
          .toList()),
    ];
  }
}

class _SwidVisitor extends RecursiveAstVisitor
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
    if (node.nativeClause == null) {
      var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
          dartClassOrMixinOrClassTypAliasDeclaration:
              DartClassOrMixinOrClassTypAliasDeclaration.fromClassDeclaration(
                  classDeclaration: node));

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

    if (node.name.name == "Iterable") {
      print(node.name.name);
      File("test/swid/res/Iterable.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Set") {
      print(node.name.name);
      File("test/swid/res/Set.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "RRect") {
      print(node.name.name);
      File("test/swid/res/RRect.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "UnmodifiableByteBufferView") {
      print(node.name.name);
      File("test/swid/res/UnmodifiableByteBufferView.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "UnmodifiableFloat32ListView") {
      print(node.name.name);
      File("test/swid/res/UnmodifiableFloat32ListView.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Float32List") {
      print(node.name.name);
      File("test/swid/res/Float32List.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "ListMixin") {
      print(node.name.name);
      File("test/swid/res/ListMixin.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "Iterable") {
      print(node.name.name);
      File("test/swid/res/Iterable.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "IterableBase") {
      print(node.name.name);
      File("test/swid/res/IterableBase.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "UnmodifiableListBase") {
      print(node.name.name);
      File("test/swid/res/UnmodifiableListBase.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    super.visitClassDeclaration(node);
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
        dartClassOrMixinOrClassTypAliasDeclaration:
            DartClassOrMixinOrClassTypAliasDeclaration.fromClassTypeAlias(
                classTypeAlias: node));
    if (res != null) {
      classes.add(res);
    }
    if (node.name.name == "UnmodifiableListBase") {
      print(node.name.name);
      File("test/swid/res/UnmodifiableListBase.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    if (node.name.name == "_UnmodifiableListMixin") {
      print(node.name.name);
      File("test/swid/res/_UnmodifiableListMixin.json")
          .writeAsStringSync(json.encode(classes.last.toJson()));
    }

    return super.visitClassTypeAlias(node);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    if (node.name.name == "Diagnosticable") {
      print(node.name.name);

      var res = swidClassFromDartClassOrMixinOrClassTypAliasDeclaration(
          dartClassOrMixinOrClassTypAliasDeclaration:
              DartClassOrMixinOrClassTypAliasDeclaration.fromMixinDeclaration(
                  mixinDeclaration: node));

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
      {bool subDir, DriverCommands commandCallback}) {}

  @override
  void setFilePath(String filePath) {}

  @override
  void setLineInfo(LineInfo lineInfo) {}
}
