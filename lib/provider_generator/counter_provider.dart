import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@Riverpod(keepAlive: true)
class CounterGen extends _$CounterGen {
  @override
  Future<int> build() async {
    await Future.delayed(const Duration(seconds: 2));

    return 0;
  }

  void increment() {
    int? value = state.valueOrNull;

    if (value != null) {
      state = AsyncData(value + 1);
    }
  }
}
