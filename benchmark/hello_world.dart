import 'package:benchmark_harness/benchmark_harness.dart';

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  @override
  void run() {
    print("hello world");
  }

  @override
  void setup() { }

  @override
  void teardown() { }
}

void main() {
  TemplateBenchmark templateBenchmark = TemplateBenchmark();
  print(templateBenchmark.measure());
}