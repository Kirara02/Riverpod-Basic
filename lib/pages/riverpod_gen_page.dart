import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/provider_generator/greeting_provider.dart';
import 'package:riverpod_demo/provider_generator/number_provider.dart';
import 'package:riverpod_demo/provider_generator/title_provider.dart';

class RiverpodGenPage extends ConsumerWidget {
  const RiverpodGenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ref.watch(titleProvider),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Future Provider"),
            Text(
              ref.watch(greetingGenProvider(nama: "Kirara Bernstein")).when(
                    data: (data) => data,
                    error: (error, stackTrace) => error.toString(),
                    loading: () => "Loading",
                  ),
            ),
            const SizedBox(height: 40),
            const Text("Stream Provider"),
            Text(
              ref.watch(numbersProvider).when(
                    data: (data) => '$data',
                    error: (error, stackTrace) => '$error',
                    loading: () => 'Loading',
                  ),
            )
          ],
        ),
      ),
    );
  }
}
