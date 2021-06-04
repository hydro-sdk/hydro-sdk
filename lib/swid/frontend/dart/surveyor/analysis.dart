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

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:analyzer/src/generated/engine.dart'; // ignore: implementation_imports
import 'package:analyzer/src/generated/source.dart'; // ignore: implementation_imports
import 'package:analyzer/src/workspace/workspace.dart'; // ignore: implementation_imports
import 'package:path/path.dart' as path;

final Map<String, int> _severityCompare = {
  'error': 5,
  'warning': 4,
  'info': 3,
  'lint': 2,
  'hint': 1,
};

WorkspacePackage getPackage(CompilationUnit unit) {
  var element = unit.declaredElement;
  var libraryPath = element.library.source.source.fullName;
  var workspace = element.session?.analysisContext?.workspace;
  return workspace?.findPackageFor(libraryPath);
}

bool implementsInterface(DartType type, String interface, String library) {
  if (type is! InterfaceType) {
    return false;
  }
  bool predicate(InterfaceType i) => isInterface(i, interface, library);
  ClassElement element = type.element;
  return predicate(type) ||
      !element.isSynthetic && element.allSupertypes.any(predicate);
}

/// Returns `true` if this [node] is the child of a private compilation unit
/// member.
bool inPrivateMember(AstNode node) {
  var parent = node.parent;
  if (parent is NamedCompilationUnitMember) {
    return isPrivate(parent.name);
  }
  if (parent is ExtensionDeclaration) {
    return parent.name == null || isPrivate(parent.name);
  }
  return false;
}

/// Return true if this compilation unit [node] is declared within the given
/// [package]'s `lib/` directory tree.
bool isInLibDir(CompilationUnit node, WorkspacePackage package) {
  var cuPath = node.declaredElement.library?.source?.fullName;
  if (cuPath == null) return false;
  var libDir = path.join(package.root, 'lib');
  return path.isWithin(libDir, cuPath);
}

bool isInterface(InterfaceType type, String interface, String library) =>
    type.element?.name == interface && type.element.library.name == library;

/// Check if the given identifier has a private name.
bool isPrivate(SimpleIdentifier identifier) =>
    identifier != null && Identifier.isPrivateName(identifier.name);

bool isWidgetType(DartType type) => implementsInterface(type, 'Widget', '');

String _pluralize(String word, int count) => count == 1 ? word : '${word}s';

/// Given an absolute path, return a relative path if the file is contained in
/// the current directory; return the original path otherwise.
String _relative(String file) =>
    file.startsWith(path.current) ? path.relative(file) : file;

/// Returns the given error's severity.
ErrorSeverity _severityIdentity(AnalysisError error) =>
    error.errorCode.errorSeverity;

/// Returns desired severity for the given [error] (or `null` if it's to be
/// suppressed).
typedef SeverityProcessor = ErrorSeverity Function(AnalysisError error);

/// Analysis statistics counter.
class AnalysisStats {
  int unfilteredCount = 0;

  int errorCount = 0;
  int hintCount = 0;
  int lintCount = 0;
  int warnCount = 0;

  AnalysisStats();

  /// The total number of diagnostics reported to the user.
  int get filteredCount => errorCount + warnCount + hintCount + lintCount;

  /// Print statistics to [out].
  void print([StringSink out]) {
    out ??= io.stdout;
    var hasErrors = errorCount != 0;
    var hasWarns = warnCount != 0;
    var hasHints = hintCount != 0;
    var hasLints = lintCount != 0;
    var hasContent = false;
    if (hasErrors) {
      out.write(errorCount);
      out.write(' ');
      out.write(_pluralize('error', errorCount));
      hasContent = true;
    }
    if (hasWarns) {
      if (hasContent) {
        if (!hasHints && !hasLints) {
          out.write(' and ');
        } else {
          out.write(', ');
        }
      }
      out.write(warnCount);
      out.write(' ');
      out.write(_pluralize('warning', warnCount));
      hasContent = true;
    }
    if (hasLints) {
      if (hasContent) {
        out.write(hasHints ? ', ' : ' and ');
      }
      out.write(lintCount);
      out.write(' ');
      out.write(_pluralize('lint', lintCount));
      hasContent = true;
    }
    if (hasHints) {
      if (hasContent) {
        out.write(' and ');
      }
      out.write(hintCount);
      out.write(' ');
      out.write(_pluralize('hint', hintCount));
      hasContent = true;
    }
    if (hasContent) {
      out.writeln(' found.');
    } else {
      out.writeln('No issues found!');
    }
  }
}

class AnsiLogger {
  bool useAnsi;

  AnsiLogger(this.useAnsi);
  String get blue => _code('\u001b[34m');
  String get bold => _code('\u001b[1m');
  String get bullet => !io.Platform.isWindows ? '•' : '-';
  String get cyan => _code('\u001b[36m');
  String get gray => _code('\u001b[1;30m');
  String get green => _code('\u001b[32m');
  String get magenta => _code('\u001b[35m');
  String get noColor => _code('\u001b[39m');
  String get none => _code('\u001b[0m');

  String get red => _code('\u001b[31m');

  String get yellow => _code('\u001b[33m');

  String _code(String ansiCode) => useAnsi ? ansiCode : '';
}

/// An [AnalysisError] with line and column information.
class CLIError implements Comparable<CLIError> {
  String severity;
  String sourcePath;
  int offset;
  int line;
  int column;
  String message;
  String errorCode;
  String correction;

  CLIError({
    this.severity,
    this.sourcePath,
    this.offset,
    this.line,
    this.column,
    this.message,
    this.errorCode,
    this.correction,
  });

  @override
  int get hashCode =>
      severity.hashCode ^ sourcePath.hashCode ^ errorCode.hashCode ^ offset;
  bool get isError => severity == 'error';
  bool get isHint => severity == 'hint';
  bool get isLint => severity == 'lint';

  bool get isWarning => severity == 'warning';

  @override
  bool operator ==(other) {
    if (other is! CLIError) return false;

    return severity == other.severity &&
        sourcePath == other.sourcePath &&
        errorCode == other.errorCode &&
        offset == other.offset;
  }

  @override
  int compareTo(CLIError other) {
    // severity
    var compare = _severityCompare[other.severity] - _severityCompare[severity];
    if (compare != 0) return compare;

    // path
    compare = Comparable.compare(
        sourcePath.toLowerCase(), other.sourcePath.toLowerCase());
    if (compare != 0) return compare;

    // offset
    return offset - other.offset;
  }
}

/// Helper for formatting [AnalysisError]s.
///
/// The two format options are a user consumable format and a machine consumable
/// format.
abstract class ErrorFormatter {
  StringSink out;
  AnalysisStats stats;
  SeverityProcessor _severityProcessor;

  ErrorFormatter(this.out, this.stats, {SeverityProcessor severityProcessor}) {
    _severityProcessor = severityProcessor ?? _severityIdentity;
  }

  /// Call to write any batched up errors from [formatErrors].
  void flush();

  void formatError(
      Map<AnalysisError, LineInfo> errorToLine, AnalysisError error);

  void formatErrors(List<AnalysisErrorInfo> errorInfos) {
    stats.unfilteredCount += errorInfos.length;

    var errors = <AnalysisError>[];
    var errorToLine = <AnalysisError, LineInfo>{};
    for (var errorInfo in errorInfos) {
      for (var error in errorInfo.errors) {
        if (_computeSeverity(error) != null) {
          errors.add(error);
          errorToLine[error] = errorInfo.lineInfo;
        }
      }
    }

    for (var error in errors) {
      formatError(errorToLine, error);
    }
  }

  /// Compute the severity for this [error] or `null` if this error should be
  /// filtered.
  ErrorSeverity _computeSeverity(AnalysisError error) =>
      _severityProcessor(error);
}

class HumanErrorFormatter extends ErrorFormatter {
  AnsiLogger ansi;
  bool displayCorrections;

  // This is a Set in order to de-dup CLI errors.
  Set<CLIError> batchedErrors = {};

  HumanErrorFormatter(StringSink out, AnalysisStats stats,
      {SeverityProcessor severityProcessor,
      bool ansiColor = false,
      this.displayCorrections = false})
      : super(out, stats, severityProcessor: severityProcessor) {
    ansi = AnsiLogger(ansiColor);
  }

  @override
  void flush() {
    // sort
    var sortedErrors = batchedErrors.toList()..sort();

    // print
    for (var error in sortedErrors) {
      if (error.isError) {
        stats.errorCount++;
      } else if (error.isWarning) {
        stats.warnCount++;
      } else if (error.isLint) {
        stats.lintCount++;
      } else if (error.isHint) {
        stats.hintCount++;
      }

      // warning • 'foo' is not a bar at lib/foo.dart:1:2 • foo_warning
      var issueColor = (error.isError || error.isWarning) ? ansi.red : '';
      out.write('  $issueColor${error.severity}${ansi.none} '
          '${ansi.bullet} ${ansi.bold}${error.message}${ansi.none} ');
      out.write('at ${error.sourcePath}');
      out.write(':${error.line}:${error.column} ');
      out.write('${ansi.bullet} ${error.errorCode}');
      out.writeln();

      if (displayCorrections && error.correction != null) {
        out.writeln(
            '${' '.padLeft(error.severity.length + 2)}${error.correction}');
      }
    }

    // clear out batched errors
    batchedErrors.clear();
  }

  @override
  void formatError(
      Map<AnalysisError, LineInfo> errorToLine, AnalysisError error) {
    var source = error.source;
    var location = errorToLine[error].getLocation(error.offset);

    var severity = _severityProcessor(error);

    // Get display name; translate INFOs into LINTS and HINTS.
    var errorType = severity.displayName;
    if (severity == ErrorSeverity.INFO) {
      if (error.errorCode.type == ErrorType.HINT ||
          error.errorCode.type == ErrorType.LINT) {
        errorType = error.errorCode.type.displayName;
      }
    }

    // warning • 'foo' is not a bar at lib/foo.dart:1:2 • foo_warning
    var message = error.message;
    // Remove any terminating '.' from the end of the message.
    if (message.endsWith('.')) {
      message = message.substring(0, message.length - 1);
    }
    String sourcePath;
    if (source.uriKind == UriKind.DART_URI) {
      sourcePath = source.uri.toString();
    } else if (source.uriKind == UriKind.PACKAGE_URI) {
      sourcePath = _relative(source.fullName);
      if (sourcePath == source.fullName) {
        // If we weren't able to shorten the path name, use the package: version.
        sourcePath = source.uri.toString();
      }
    } else {
      sourcePath = _relative(source.fullName);
    }

    batchedErrors.add(CLIError(
      severity: errorType,
      sourcePath: sourcePath,
      offset: error.offset,
      line: location.lineNumber,
      column: location.columnNumber,
      message: message,
      errorCode: error.errorCode.name.toLowerCase(),
      correction: error.correction,
    ));
  }
}
