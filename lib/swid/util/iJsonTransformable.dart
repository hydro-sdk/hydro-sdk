import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class IJsonTransformable<T extends Object> {
  const IJsonTransformable();

  Map<String, dynamic> toJson();

  T fromJson(final Map<String, dynamic> json);
}
