import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider(
  (ref) => "Kirara Bernstein",
);

final greetingProvider = Provider(
  (ref) => "Hello ${ref.watch(nameProvider)}",
);

final counterProvider = StateProvider(
  (ref) => 0,
);
