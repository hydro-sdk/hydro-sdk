//  Copyright 2019 Google LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import 'dart:io' as io;

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/file_system/file_system.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/src/generated/engine.dart' // ignore: implementation_imports
    show
        AnalysisEngine,
        AnalysisOptionsImpl;
import 'package:analyzer/src/lint/registry.dart'; // ignore: implementation_imports
import 'package:analyzer/src/services/lint.dart'; // ignore: implementation_imports
import 'package:args/args.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/frontend/dart/surveyor/common.dart';
import 'package:hydro_sdk/swid/frontend/dart/surveyor/install.dart';
import 'package:hydro_sdk/swid/frontend/dart/surveyor/visitors.dart';

class Driver {
  CommandLineOptions options;

  /// Hook to contribute a custom AST visitor.
  AstVisitor visitor;

  /// Hook to contribute custom options analysis.
  OptionsVisitor optionsVisitor;

  /// Hook to contribute custom pubspec analysis.
  PubspecVisitor pubspecVisitor;

  List<String> _excludedPaths;

  bool showErrors = true;

  bool resolveUnits = true;

  List<String> sources;

  List<Linter> _lints;

  bool forceSkipInstall = false;

  bool silent = false;

  /// Handles printing.  Can be overwritten by clients.
  Logger logger = Logger.standard();

  Driver(ArgResults argResults)
      : options = CommandLineOptions.fromArgs(argResults),
        sources = argResults.rest
            .map((p) => path.normalize(io.File(p).absolute.path))
            .toList();

  factory Driver.forArgs(List<String> args) {
    var argParser = ArgParser()
      ..addFlag('verbose', abbr: 'v', help: 'verbose output.')
      ..addFlag('force-install', help: 'force package (re)installation.')
      ..addFlag('skip-install', help: 'skip package install checks.')
      ..addFlag('color', help: 'color output.');
    var argResults = argParser.parse(args);
    return Driver(argResults);
  }

  /// List of paths to exclude from analysis.
  List<String> get excludedPaths => _excludedPaths ?? [];

  /// List of paths to exclude from analysis.
  /// For example:
  /// ```
  ///   driver.excludedPaths = ['example', 'test'];
  /// ```
  /// excludes package `example` and `test` directories.
  set excludedPaths(List<String> excludedPaths) {
    _excludedPaths = excludedPaths;
  }

  bool get forcePackageInstall => options.forceInstall;

  List<Linter> get lints => _lints;

  /// Hook to contribute custom lint rules.
  set lints(List<Linter> lints) {
    // Ensure lints are registered
    for (var lint in lints) {
      Registry.ruleRegistry.register(lint);
    }
    _lints = lints;
  }

  bool get skipPackageInstall => forceSkipInstall || options.skipInstall;

  Future analyze({bool forceInstall}) => _analyze(sources);

  /// Hook to influence context post analysis.
  void postAnalyze(SurveyorContext context, DriverCommands callback) {
    if (visitor is PostAnalysisCallback) {
      (visitor as PostAnalysisCallback).postAnalysis(context, callback);
    }
  }

  /// Hook to influence context before analysis.
  void preAnalyze(SurveyorContext context, {bool subDir}) {
    if (visitor is PreAnalysisCallback) {
      (visitor as PreAnalysisCallback).preAnalysis(context, subDir: subDir);
    }
  }

  Future _analyze(List<String> sourceDirs) async {
    if (sourceDirs.isEmpty) {
      _print('Specify one or more files and directories.');
      return;
    }
    ResourceProvider resourceProvider = PhysicalResourceProvider.INSTANCE;
    await _analyzeFiles(resourceProvider, sourceDirs);
    _print('Finished.');
  }

  Future _analyzeFiles(
      ResourceProvider resourceProvider, List<String> analysisRoots) async {
    if (skipPackageInstall) {
      _print('(Skipping dependency checks.)');
    }

    if (excludedPaths.isNotEmpty) {
      _print('(Excluding paths $excludedPaths from analysis.)');
    }

    // Analyze.
    _print('Analyzing...');

    var cmd = DriverCommands();

    for (var root in analysisRoots) {
      if (cmd.continueAnalyzing) {
        var collection = AnalysisContextCollection(
          includedPaths: [root],
          excludedPaths: excludedPaths.map((p) => path.join(root, p)).toList(),
          resourceProvider: resourceProvider,
        );

        for (var context in collection.contexts) {
          // Add custom lints.
          if (lints != null) {
            var options = context.analysisOptions as AnalysisOptionsImpl;
            options.lintRules = context.analysisOptions.lintRules.toList();
            for (var lint in lints) {
              options.lintRules.add(lint);
            }
            options.lint = true;
          }
          var dir = context.contextRoot.root.path;
          var package = Package(dir);
          // Ensure dependencies are installed.
          if (!skipPackageInstall) {
            await package.installDependencies(
                force: forcePackageInstall, silent: silent);
          }

          // Skip analysis if no .packages.
          if (!package.packagesFile.existsSync()) {
            _print('No .packages in $dir (skipping analysis)');
            continue;
          }

          var surveyorContext = SurveyorContext(context);

          preAnalyze(surveyorContext, subDir: dir != root);

          print("Priming analysis context");
          for (var filePath in context.contextRoot.analyzedFiles()) {
            print(filePath);
            await context.currentSession.getUnitElement(filePath);
          }

          for (var filePath in context.contextRoot.analyzedFiles()) {
            if (AnalysisEngine.isDartFileName(filePath)) {
              try {
                var result = resolveUnits
                    ? await context.currentSession.getResolvedUnit(filePath)
                    : context.currentSession.getParsedUnit(filePath);

                if (visitor != null) {
                  if (visitor is ErrorReporter) {
                    (visitor as ErrorReporter).reportError(result);
                  }
                  if (visitor is AstContext) {
                    var astContext = visitor as AstContext;
                    astContext.setLineInfo(result.lineInfo);
                    astContext.setFilePath(filePath);
                  }
                  if (result is ParsedUnitResult) {
                    result.unit.accept(visitor);
                  } else if (result is ResolvedUnitResult) {
                    result.unit.accept(visitor);
                  }
                }
              } catch (e) {
                _print('Exception caught analyzing: $filePath');
                _print(e.toString());
              }
            }

            if (optionsVisitor != null) {
              if (AnalysisEngine.isAnalysisOptionsFileName(filePath)) {
                optionsVisitor.visit(AnalysisOptionsFile(filePath));
              }
            }

            if (pubspecVisitor != null) {
              if (path.basename(filePath) == 'pubspec.yaml') {
                pubspecVisitor.visit(PubspecFile(filePath));
              }
            }
          }

          await pumpEventQueue(times: 512);
          postAnalyze(surveyorContext, cmd);
        }
      }
    }

    if (visitor is PostVisitCallback) {
      (visitor as PostVisitCallback).onVisitFinished();
    }
  }

  /// Pass the following [msg] to the [logger] instance iff [silent] is false.
  void _print(String msg) {
    if (!silent) {
      logger.stdout(msg);
    }
  }
}

class DriverCommands {
  bool continueAnalyzing = true;
}
