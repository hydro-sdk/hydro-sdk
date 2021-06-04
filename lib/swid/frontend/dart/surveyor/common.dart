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

import 'dart:io';

import 'package:args/args.dart';
import 'package:http/http.dart' as http;
import 'package:yaml/yaml.dart';

var _client = http.Client();

Future<String> getBody(String url) async => (await getResponse(url)).body;

Future<http.Response> getResponse(String url) async => _client.get(url);

/// Returns a [Future] that completes after the [event loop][] has run the given
/// number of [times] (20 by default).
///
/// [event loop]: https://webdev.dartlang.org/articles/performance/event-loop#darts-event-loop-and-queues
///
/// Awaiting this approximates waiting until all asynchronous work (other than
/// work that's waiting for external resources) completes.
Future pumpEventQueue({int times}) {
  times ??= 20;
  if (times == 0) return Future.value();
  // Use [new Future] future to allow microtask events to finish. The [new
  // Future.value] constructor uses scheduleMicrotask itself and would therefore
  // not wait for microtask callbacks that are scheduled after invoking this
  // method.
  return Future(() => pumpEventQueue(times: times - 1));
}

double toDouble(Object value) {
  if (value is double) {
    return value;
  }
  try {
    return double.parse(value);
  } on FormatException {
    rethrow;
  }
}

int toInt(Object value) {
  if (value is int) {
    return value;
  }
  try {
    return int.parse(value);
  } on FormatException {
    rethrow;
  }
}

YamlMap _readYamlFromString(String optionsSource) {
  if (optionsSource == null) {
    return YamlMap();
  }
  try {
    var doc = loadYamlNode(optionsSource);
    if (doc is YamlMap) {
      return doc;
    }
    return YamlMap();
  } on YamlException catch (e) {
    throw FormatException(e.message, e.span);
  } catch (e) {
    throw FormatException('Unable to parse YAML document.');
  }
}

class AnalysisOptionsFile {
  File file;

  String _contents;

  YamlMap _yaml;
  AnalysisOptionsFile(String path) : file = File(path);

  String get contents => _contents ??= file.readAsStringSync();

  /// Can throw a [FormatException] if yaml is malformed.
  YamlMap get yaml => _yaml ??= _readYamlFromString(contents);
}

class CommandLineOptions {
  /// Emit output in a verbose mode.
  bool verbose;

  /// Use ANSI color codes for output.
  bool color;

  /// Force installation of package dependencies.
  bool forceInstall;

  /// Skip package dependency install checks.
  bool skipInstall;

  CommandLineOptions({
    this.verbose = false,
    this.color = false,
    this.forceInstall = false,
    this.skipInstall = false,
  });

  CommandLineOptions.fromArgs(ArgResults args)
      : this(
          verbose: args['verbose'],
          color: args['color'],
          forceInstall: args['force-install'],
          skipInstall: args['skip-install'],
        );
}

class PubspecFile {
  File file;

  String _contents;

  YamlMap _yaml;
  PubspecFile(String path) : file = File(path);

  String get contents => _contents ??= file.readAsStringSync();

  /// Can throw a [FormatException] if yaml is malformed.
  YamlMap get yaml => _yaml ??= _readYamlFromString(contents);
}
