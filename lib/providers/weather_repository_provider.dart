import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/repositories/weather_repository.dart';

var weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => WeatherRepository(),
);

var weatherFutureProvider = FutureProvider.autoDispose(
  (ref) =>
      ref.watch(weatherRepositoryProvider).getCurrentWeather("Tasikmalaya"),
);

var weatherStreamProvider = FutureProvider.autoDispose(
  (ref) => ref.watch(weatherRepositoryProvider).getWeatherStream("Bandung"),
);
