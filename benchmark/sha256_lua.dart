import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/hydroState.dart';

class Sha256Benchmark extends BenchmarkBase {
  Sha256Benchmark() : super('Sha256');

  final HydroState hydroState = HydroState();
  Closure sha256;

  @override
  void run() {
    var res = sha256(["some input"])[0];
    assert(res ==
        "2be35bc671dc912e7f540f0e5a2e915ef6a4a4dbd2ada5ba9c1d2b117bfc907c");
  }

  @override
  void setup() {}

  Future<void> asyncSetup() async {
    var res = await hydroState.loadFile("benchmark/sha256.hc");
    res.call([]);
    sha256 = res.state.context.env["sha256"];
  }

  @override
  void teardown() {}
}

class MinimalSha256Benchmark extends BenchmarkBase {
  MinimalSha256Benchmark() : super('Sha256');

  final HydroState hydroState = HydroState();
  Closure sha256;

  @override
  void run() {
    var res = sha256(["some input"])[0];
    assert(res ==
        "2be35bc671dc912e7f540f0e5a2e915ef6a4a4dbd2ada5ba9c1d2b117bfc907c");
  }

  @override
  void setup() {}

  Future<void> asyncSetup() async {
    var res = await hydroState.loadFile("benchmark/sha256.hc");
    res.staticallySelectInterpreters();
    res.call([]);
    sha256 = res.state.context.env["sha256"];
  }

  @override
  void teardown() {}
}

void main() async {
  Sha256Benchmark sha256benchmark = Sha256Benchmark();
  await sha256benchmark.asyncSetup();
  MinimalSha256Benchmark minimalSha256Benchmark = MinimalSha256Benchmark();
  await minimalSha256Benchmark.asyncSetup();

  double shaMeasure = 0;
  double minShaMeasure = 0;

  double repetitions = 50;

  for (var i = 0; i != repetitions; ++i) {
    shaMeasure += sha256benchmark.measure();
  }

  for (var i = 0; i != repetitions; ++i) {
    minShaMeasure += minimalSha256Benchmark.measure();
  }

  print("Regular average ${shaMeasure / repetitions}");
  print("Opt average ${minShaMeasure / repetitions}");
}
