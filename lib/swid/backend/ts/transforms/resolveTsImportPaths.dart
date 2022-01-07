import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'resolveTsImportPaths.freezed.dart';

@freezed
class ResolveTsImportPaths
    with
        _$ResolveTsImportPaths,
        HashKeyMixin<ResolveTsImportPaths>,
        HashComparableMixin<ResolveTsImportPaths>,
        SwarsTransformMixin<ResolveTsImportPaths,
            $ResolveTsImportPathsCopyWith<ResolveTsImportPaths>, String>,
        SwarsTermStringResultMixin {
  ResolveTsImportPaths._();

  factory ResolveTsImportPaths({
    required final SwidType importee,
    required final SwidType importer,
    @Default([]) final List<String> prefixPaths,
  }) = _$ResolveTsImportPathsCtor;

  @override
  String get cacheGroup => "resolveTsImportsPaths";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* importee.hashKey.hashableParts;
    yield* importer.hashKey.hashableParts;
    yield* prefixPaths.hashableParts;
  }

  @override
  ResolveTsImportPaths clone({
    final SwidType? importee,
    final SwidType? importer,
    final List<String>? prefixPaths,
  }) =>
      ResolveTsImportPaths(
        importee: importee ?? this.importee,
        importer: importer ?? this.importer,
        prefixPaths: prefixPaths ?? this.prefixPaths,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        path.relative(
          prefixPaths.join(path.separator) +
              path.separator +
              transformPackageUri(
                packageUri: importee.originalPackagePath,
              ),
          from: prefixPaths.join(path.separator) +
              path.separator +
              transformPackageUri(
                packageUri: importer.originalPackagePath,
              ),
        ),
      );
}
