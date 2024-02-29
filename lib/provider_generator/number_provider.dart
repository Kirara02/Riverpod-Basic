import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'number_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<int> numbers(NumbersRef ref) async* {
  int number = 1;
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield number++;
  }
}
