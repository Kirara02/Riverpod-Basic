import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/weather_repository_provider.dart';
import 'package:riverpod_demo/repositories/weather_repository.dart';

class WeatherStreamProviderPage extends StatelessWidget {
  const WeatherStreamProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Stream Provider'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(weatherStreamProvider).when(
                    data: (stream) => StreamBuilder<Weathers>(
                      stream: stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final weather = snapshot.data!;
                          return SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(weather.path),
                          );
                        } else if (snapshot.hasError) {
                          return Text(snapshot.error.toString());
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
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
