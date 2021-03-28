import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/registry/registryApi.dart';

import 'registryTestUrl.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final api = RegistryApi(baseUrl:registryTestUrl);

    final username = "12345";

    final response = await api.getUser(username: username);

    expect(response, isNull);
  }, tags: "registry");
}
