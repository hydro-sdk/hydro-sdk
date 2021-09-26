//  Copyright 2019 Google LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required final by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/source/line_info.dart';

import 'package:hydro_sdk/swid/frontend/dart/surveyor/common.dart';
import 'package:hydro_sdk/swid/frontend/dart/surveyor/driver.dart';

/// A simple visitor for analysis options files.
abstract class AnalysisOptionsVisitor {
  void visit(AnalysisOptionsFile file) {}
}

abstract class AstContext {
  void setFilePath(String filePath);
  void setLineInfo(LineInfo lineInfo);
}

/// Hook for custom error reporting.
abstract class ErrorReporter {
  void reportError(AnalysisResultWithErrors result);
}

class OptionsVisitor extends AnalysisOptionsVisitor {
  @override
  void visit(AnalysisOptionsFile options) {
    //print('>> visiting: ${options.file}');
  }
}

/// A simple visitor for package roots.
abstract class PackageRootVisitor {
  void visit(Directory root) {}
}

abstract class PostAnalysisCallback {
  void postAnalysis(SurveyorContext context, DriverCommands commandCallback);
}

abstract class PostVisitCallback {
  void onVisitFinished();
}

abstract class PreAnalysisCallback {
  void preAnalysis(SurveyorContext context,
      {bool? subDir, DriverCommands? commandCallback});
}

/// A simple visitor for pubspec files.
abstract class PubspecVisitor {
  void visit(PubspecFile file) {}
}

class SurveyorContext {
  final AnalysisContext analysisContext;
  SurveyorContext(this.analysisContext);
}
