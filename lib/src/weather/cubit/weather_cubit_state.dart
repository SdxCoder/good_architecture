part of 'weather_cubit_cubit.dart';

@immutable
abstract class WeatherCubitState {}

class WeatherCubitInitial extends WeatherCubitState {}

class WeatherCubitLoaded extends WeatherCubitState {
  final WeatherEntity weatherEntity;

  WeatherCubitLoaded(this.weatherEntity);

}
