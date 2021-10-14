import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:cli_util/cli_logging.dart';

import 'package:hydro_sdk/build-project/componentBuilder.dart';
import 'package:hydro_sdk/build-project/projectBuilder.dart';
import 'package:hydro_sdk/build-project/sha256Data.dart';
import 'package:hydro_sdk/projectConfig/projectConfig.dart';
import 'package:hydro_sdk/registry/dto/createPackageDto.dart';
import 'package:hydro_sdk/registry/registryApi.dart';

void main(List<String> args) async {
  var parser = ArgParser();

  parser.addOption("project");
  parser.addOption("ts2hc");
  parser.addOption("cache-dir");
  parser.addOption("profile", allowed: ["debug", "release"]);
  parser.addOption("out-dir");
  parser.addOption("private-key-file");
  parser.addOption("registry-scheme");
  parser.addOption("registry-host");
  parser.addOption("registry-port");
  parser.addOption("channel");
  parser.addOption("readme");
  parser.addOption("pubspecyaml");
  parser.addOption("pubspeclock");
  parser.addOption("version");
  parser.addFlag("trim-key");

  var results = parser.parse(args);

  final String privateKeyPath = results["private-key-file"];
  final String registryScheme = results["registry-scheme"];
  final String registryHost = results["registry-host"];
  final int? registryPort = int.tryParse(results["registry-port"]);
  final bool trimKey = results["trim-key"];

  if (!await File(privateKeyPath).exists()) {
    print("Could not read private key file at $privateKeyPath");
  }

  String privateKey = await File(privateKeyPath).readAsString();

  if (privateKey != (await File(privateKeyPath).readAsString()).trim()) {
    print("Extra whitespace in private key detected");
  }

  if (trimKey) {
    print("Trimming private key");
    privateKey = privateKey.trim();
  }

  final RegistryApi registryApi = RegistryApi(
    scheme: registryScheme,
    host: registryHost,
    port: registryPort,
  );

  final String? readmePath = results["readme"];
  final String? pubspecyamlPath = results["pubspecyaml"];
  final String? pubspeclockPath = results["pubspeclock"];
  final String version = results["version"];
  final String channel = results["channel"];

  if (!await File(results["project"]).exists()) {
    print("Could not read project manifest at ${results["project"]}");
  }

  ProjectConfig projectConfig = ProjectConfig.fromJson(
      jsonDecode(await File(results["project"]).readAsString()));

  ProjectBuilder projectBuilder = ProjectBuilder(
    projectConfig: projectConfig,
    ts2hc: results["ts2hc"],
    cacheDir: results["cache-dir"],
    profile: results["profile"],
    outDir: results["out-dir"],
    signingKey: privateKey,
  );

  var res = await projectBuilder.build(
    signManifest: true,
  );

  if (!res) {
    exit(1);
  }

  final Logger logger = Logger.standard();
  final Progress progress = logger.progress("Publishing");

  final ComponentBuilder componentBuilder = ComponentBuilder(
    projectConfigComponent: projectBuilder.projectConfig.components.first,
    ts2hc: results["ts2hc"],
    cacheDir: results["cache-dir"],
    profile: results["profile"],
    outDir: results["out-dir"],
    signingKey: privateKey,
  );

  if (!await File(componentBuilder.unpackedOutputPath() + ".ota").exists()) {
    print(
        "Could not read .ota file at ${componentBuilder.unpackedOutputPath() + ".ota"}");
  }

  if (readmePath != null) {
    if (!await File(readmePath).exists()) {
      print("Could not read readme at $readmePath");
    }
  }

  if (pubspecyamlPath != null) {
    if (!await File(pubspecyamlPath).exists()) {
      print("Could not read pubspec at $pubspecyamlPath");
    }
  }

  if (pubspeclockPath != null) {
    if (!await File(pubspeclockPath).exists()) {
      print("Could not read pubspec at $pubspeclockPath");
    }
  }

  final createPackageResult = await registryApi.createPackage(
    createPackageDto: CreatePackageDto(
      publishingPrivateKeySha256: sha256Data(privateKey.codeUnits),
      otaPackageBase64: base64Encode(
          await File(componentBuilder.unpackedOutputPath() + ".ota")
              .readAsBytes()),
      componentName: projectBuilder.projectConfig.components.first.name,
      displayVersion: version,
      releaseChannelName: channel,
      description: "",
      readmeMd: readmePath != null ? await File(readmePath).readAsString() : "",
      pubspecYaml: pubspecyamlPath != null
          ? await File(pubspecyamlPath).readAsString()
          : "",
      pubspecLock: pubspeclockPath != null
          ? await File(pubspeclockPath).readAsString()
          : "",
    ),
  );

  progress.finish(
    showTiming: true,
  );

  final createPackageSuccessResult = createPackageResult.maybeWhen(
    success: (val) => val,
    orElse: () => null,
  );

  if (createPackageSuccessResult == null) {
    print("Failed to publish");

    createPackageResult.maybeWhen(
      failure: (val) => print(val.message),
      orElse: () => null,
    );

    exit(1);
  } else {
    print([
      "Successfully published ",
      projectBuilder.projectConfig.project,
      "/",
      projectBuilder.projectConfig.components.first.name,
    ].join(""));
    print([
      "Version ",
      version,
      " to channel ",
      channel,
    ].join(""));
  }
}
