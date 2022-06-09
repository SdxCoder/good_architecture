// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'] as int,
      minTemp: (json['minTemp'] as num).toDouble(),
      maxTemp: (json['maxTemp'] as num).toDouble(),
      feelsLike: (json['feelsLike'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'feelsLike': instance.feelsLike,
      'windSpeed': instance.windSpeed,
      'city': instance.city,
      'country': instance.country,
    };
