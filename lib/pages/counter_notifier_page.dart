import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/provider_generator/counter_provider.dart';

class CounterNotifierPage extends ConsumerWidget {
  const CounterNotifierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Notifier Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(counterGenProvider).when(
                  data: (data) => '$data',
                  error: (error, stackTrace) => error.toString(),
                  loading: () => 'Loading'),
              style: GoogleFonts.poppins(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(counterGenProvider.notifier).increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
