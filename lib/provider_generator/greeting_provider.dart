import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_provider.g.dart';

@riverpod
Future<String> greetingGen(GreetingGenRef ref, {required String nama}) async {
  await Future.delayed(const Duration(seconds: 2));
  return "Hello $nama";
}
