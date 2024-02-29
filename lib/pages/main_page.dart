import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/pages/counter_notifier_page.dart';
import 'package:riverpod_demo/pages/counter_page.dart';
import 'package:riverpod_demo/pages/person_page.dart';
import 'package:riverpod_demo/pages/riverpod_gen_page.dart';
import 'package:riverpod_demo/pages/second_page.dart';
import 'package:riverpod_demo/pages/user_page.dart';
import 'package:riverpod_demo/pages/weather_future_provider_page.dart';
import 'package:riverpod_demo/pages/weather_stream_provider_page.dart';
import 'package:riverpod_demo/providers/providers.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(nameProvider),
              style: GoogleFonts.poppins(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ));
              },
              child: const Text('Go to Second Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CounterPage(),
                    ));
              },
              child: const Text('Go to Counter Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonPage(),
                    ));
              },
              child: const Text('Go to Person Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherFutureProviderPage(),
                    ));
              },
              child: const Text('Go to Weather Future Provider Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherStreamProviderPage(),
                    ));
              },
              child: const Text('Go to Weather Future Provider Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserPage(),
                    ));
              },
              child: const Text('Go to User Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RiverpodGenPage(),
                    ));
              },
              child: const Text('Go to Riverpod Gen Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CounterNotifierPage(),
                    ));
              },
              child: const Text('Go to Counter Notifier Page'),
            ),
          ],
        ),
      ),
    );
  }
}
