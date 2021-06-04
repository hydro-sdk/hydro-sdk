import 'package:meta/meta.dart';

abstract class InputResolver {
  const InputResolver();

  Future<String> resolveInput({required String input});
}
