import 'package:test/test.dart';
import 'package:http/http.dart' as http;


import '../lib/unit_tests/counter.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 2);

  });
}