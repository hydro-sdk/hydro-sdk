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

import 'package:path/path.dart' as pathutil;
import 'package:yaml/yaml.dart' as yaml;

class Package {
  static final _Installer _installer = _Installer();

  final Directory dir;
  Package(String path) : dir = Directory(path);

  Map<String, dynamic> get dependencies {
    var deps = pubspec['dependencies']?.value;
    if (deps is yaml.YamlMap) {
      return deps.nodes
          .map((k, v) => MapEntry<String, dynamic>(k.toString(), v));
    }
    return {};
  }

  File get packagesFile => File(pathutil.join(dir.path, '.packages'));

  Map<dynamic, yaml.YamlNode> get pubspec {
    var file = pubspecFile;
    if (file.existsSync()) {
      try {
        return (yaml.loadYaml(file.readAsStringSync()) as yaml.YamlMap).nodes;
      } on yaml.YamlException {
        // Warn?
      }
    }
    return <dynamic, yaml.YamlNode>{};
  }

  File get pubspecFile => File(pathutil.join(dir.path, 'pubspec.yaml'));

  Future<bool> installDependencies(
      {bool force = false, bool silent = false}) async {
    if (!force && _installer.hasDependenciesInstalled(this)) {
      return false;
    }

    await _installer.installDependencies(this, silent: silent);
    return true;
  }
}

class _Installer {
  bool hasDependenciesInstalled(Package package) =>
      package.dir.existsSync() && package.packagesFile.existsSync();

  Future<ProcessResult?> installDependencies(Package package,
      {bool silent = false}) async {
    var sourcePath = package.dir.path;
    if (!package.dir.existsSync()) {
      _print(
          'Unable to install dependencies: $sourcePath does not exist', silent);
      return null;
    }
    if (!package.pubspecFile.existsSync()) {
      return null;
    }

    if (package.dependencies.containsKey('flutter') == true) {
      _print(
          'Running "flutter packages get" in ${pathutil.basename(sourcePath)}',
          silent);
      return Process.run('flutter', ['packages', 'get'],
          workingDirectory: sourcePath, runInShell: true);
    }

    _print('Running "pub get" in ${pathutil.basename(sourcePath)}', silent);
    return Process.run('pub', ['get'],
        workingDirectory: sourcePath, runInShell: true);
  }

  /// Display the following [msg] to stdout iff [silent] is false.
  void _print(String msg, bool silent) {
    if (!silent) {
      print(msg);
    }
  }
}
