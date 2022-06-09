import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  const Weather({
    required this.id,
    required this.minTemp,
    required this.maxTemp,
    required this.feelsLike,
    required this.windSpeed,
    required this.city,
    required this.country,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  final int id;
  final double minTemp;
  final double maxTemp;
  final double feelsLike;
  final double windSpeed;
  final String city;
  final String country;
}
