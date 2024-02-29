import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/weather_repository_provider.dart';

class WeatherFutureProviderPage extends StatelessWidget {
  const WeatherFutureProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Future Provider'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(weatherFutureProvider).when(
                    data: (data) => SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(data.path),
                    ),
                    error: (error, stackTrace) => Text(
                      error.toString(),
                    ),
                    loading: () => const CircularProgressIndicator(),
                  ),
        ),
      ),
    );
  }
}
